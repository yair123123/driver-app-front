import 'dart:async';

import 'package:driver_app/core/services/crash_reporting/crash_reporting_service.dart';
import 'package:driver_app/core/services/crash_reporting/firebase_crash_reporting_service.dart';

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

    unawaited(
      _crashReportingService.recordNonFatal(
        effectiveError,
        stack: stack ?? StackTrace.current,
        reason: msg,
        keys: extra,
      ),
    );
  }
}
