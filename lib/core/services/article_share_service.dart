import 'package:news_app/core/env/config_service.dart';
import 'package:news_app/features/lang_and_area/domain/area_entity.dart';
import 'package:news_app/features/lang_and_area/domain/lang_entity.dart';
import 'package:riverpod/riverpod.dart';
import 'package:share_plus/share_plus.dart';

const LANG = "lang";

class ArticleShareService {
  const ArticleShareService({required this.publicHost});

  final String publicHost;

  Uri buildArticleUri({
    required String articleId,
    required String langCode,
    required String areaCode,
  }) {
    return Uri.https(publicHost, '/share/a/$articleId', {
      'lang': langCode,
      'code': areaCode,
    });
  }

  Uri buildAMessageUri({
    required String messageId,
    required String groupId,
    required String langCode,
    required String areaCode,
  }) {
    return Uri.https(publicHost, '/share/m/$groupId/$messageId', {
      'lang': langCode,
      'code': areaCode,
    });
  }

  Future<void> shareArticle({
    required String articleId,
    required String langCode,
    required String areaCode,
  }) async {
    final uri = buildArticleUri(
      articleId: articleId,
      langCode: langCode,
      areaCode: areaCode,
    );
    await SharePlus.instance.share(ShareParams(uri: uri));
  }

  Future<void>shareMessage({
    required String groupId,
    required String messageId,
    required String langCode,
    required String areaCode,
  }) async {
    final uri = buildAMessageUri(
      messageId: messageId,
      groupId: groupId,
      langCode: langCode,
      areaCode: areaCode,
    );
    await SharePlus.instance.share(ShareParams(uri: uri));
  }
}

final articleShareServiceProvider = Provider(
  (ref) => ArticleShareService(
    publicHost: ref.read(configServiceProvider).current().publicApiUrl,
  ),
);
