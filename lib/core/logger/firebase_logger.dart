import 'dart:async';
import 'dart:io';

import '../error/failure.dart';
import '../services/crash_reporting/crash_reporting_service.dart';
import '../services/crash_reporting/firebase_crash_reporting_service.dart';

class FirebaseLogger {
  static final CrashReportingService _crashReportingService =
  FirebaseCrashReportingService();

  static Future<void> init() async {
    await _crashReportingService.init();
  }

  static void w(String msg, {Map<String, Object?>? extra}) {
    _crashReportingService.log('[W] $msg', extra: extra);
  }

  static void i(String msg, {Map<String, Object?>? extra}) {
    _crashReportingService.log('[I] $msg', extra: extra);
  }

  static void e(
      String msg, {
        Object? error,
        StackTrace? stack,
        Map<String, Object?>? extra,
      }) {
    _crashReportingService.log('[E] $msg', extra: extra);

    final effectiveError = error ?? Exception(msg);

    if (!_shouldReport(effectiveError)) return;

    unawaited(
      _crashReportingService.recordNonFatal(
        effectiveError,
        stack: stack ?? StackTrace.current,
        reason: msg,
        keys: extra,
      ),
    );
  }

  static bool _shouldReport(Object error) {
    if (error is Failure) {
      return error.reportable;
    }

    if (error is SocketException || error is TimeoutException) {
      return false;
    }

    return true;
  }
}
