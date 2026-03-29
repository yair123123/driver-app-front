import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:news_app/core/logger/firebase_logger.dart';

typedef UriListener = void Function(Uri uri);

class AppLinksSource {
  final AppLinks _appLinks;
  StreamSubscription<Uri>? _sub;

  AppLinksSource({AppLinks? appLinks}) : _appLinks = appLinks ?? AppLinks();
  Future<void> start({required UriListener onUri}) async {
    FirebaseLogger.i("AppLinksSource: start");
    final initial = await _appLinks.getInitialLink();
    if (initial != null) {
      FirebaseLogger.i("AppLinksSource: initial link $initial");
      onUri(initial);
    } else {
      FirebaseLogger.w('AppLinksSource: no initial link');
    }
    _sub = _appLinks.uriLinkStream.listen(
      (uri) {
        FirebaseLogger.i("AppLinksSource: stream link $uri");
        onUri(uri); 
      },
      onError: (er, st) {
        FirebaseLogger.e('AppLinksSource: stream error $er', stack: st);
      },
    );
  }

  Future<void> stop() async {
    FirebaseLogger.i('AppLinksSource: stop');
    await _sub?.cancel();
    _sub = null;
  }
}
