import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/core/env/config_service.dart';
import 'package:news_app/core/services/notifications/parser/navigation_intent.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:news_app/features/home/constants/app_constants.dart';

class NavigationIntentParser {
  final String ourHost;

  NavigationIntentParser(this.ourHost);

  NavigationIntent? fromUri(Uri uri) {
    final host = uri.host;
    final shareMarker  = AppLinkMarkers.share;
    final articleMarker = AppLinkMarkers.article;
    final messageMarker = AppLinkMarkers.message;

    final isOurHost = host == ourHost || host == 'www.$ourHost';
    if (!isOurHost) return null;

    final segments = uri.pathSegments;
    if (segments.length < 2) return null;
    if (segments[0] != shareMarker) return null;

    final type = segments[1];

    if (type == articleMarker) {
      if (segments.length < 3) return null;

      final articleId = segments[2];
      if (articleId.isEmpty) return null;

      return OpenArticleIntent(articleId);
    }

    if (type == messageMarker) {
      if (segments.length < 4) return null;

      final groupId = segments[2];
      final messageId = segments[3];
      if (groupId.isEmpty || messageId.isEmpty) return null;

      return OpenMessageIntent(groupId, messageId);
    }

    return null;
  }

  NavigationIntent? fromFcm(RemoteMessage msg) {
    final data = msg.data;

    final id =
        _asNonEmptyString(data['articleId']) ?? _asNonEmptyString(data['id']);
    if (id != null) return OpenArticleIntent(id);

    final link =
        _asNonEmptyString(data['link']) ?? _asNonEmptyString(data['deeplink']);
    if (link != null) {
      final intent = fromPayload(link); // reuse payload parsing below
      if (intent != null) return intent;
    }

    final route = _asNonEmptyString(data['route']);
    if (route != null) {
      final intent = fromPayload(route);
      if (intent != null) return intent;
    }

    return null;
  }

  NavigationIntent? fromPayload(String payload) {
    final p = payload.trim();
    if (p.isEmpty) return null;

    if (p.startsWith('article:')) {
      final id = p.substring('article:'.length).trim();
      if (id.isNotEmpty) return OpenArticleIntent(id);
      return null;
    }

    final uri = _tryParseUri(p);
    if (uri != null) {
      final segments = uri.pathSegments;
      final isArticlePath = segments.isNotEmpty && segments.first == 'article';
      if (isArticlePath) {
        final articleId =
            uri.queryParameters['id'] ??
            (segments.length > 1 ? segments[1] : null);
        if (articleId != null && articleId.isNotEmpty) {
          return OpenArticleIntent(articleId);
        }
      }

      if (uri.hasAuthority && uri.host.isNotEmpty) {
        final intent = fromUri(uri);
        if (intent != null) return intent;
      }
    }

    return null;
  }

  String? _asNonEmptyString(dynamic v) {
    if (v is String) {
      final t = v.trim();
      return t.isEmpty ? null : t;
    }
    return null;
  }

  Uri? _tryParseUri(String s) {
    try {
      return Uri.parse(s);
    } catch (_) {
      return null;
    }
  }
}

final navigationIntentParserProvider = Provider<NavigationIntentParser>((ref) {
  final apiBaseUrl = ref.read(configServiceProvider).current().publicApiUrl;
  return NavigationIntentParser(apiBaseUrl);
});
