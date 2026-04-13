import 'package:driver_app/core/services/crash_reporting/crash_reporting_service.dart';
import 'package:driver_app/core/services/crash_reporting/firebase_crash_reporting_service.dart';
import 'package:riverpod/riverpod.dart';

final crashReportingServiceProvider = Provider<CrashReportingService>((ref) {
  return FirebaseCrashReportingService();
});
