abstract class CrashReportingService {
  Future<void> init();

  void setUserIdentifier(String id);

  void setGlobalKeys(Map<String, Object?> keys) {
    setKeys(keys);
  }

  void setFlow(String flow) {
    setKeys({'flow': flow});
  }

  void setStep(String step) {
    setKeys({'step': step});
  }

  void setKeys(Map<String, Object?> keys);

  void log(String message, {Map<String, Object?>? extra});

  Future<void> recordNonFatal(
    Object error, {
    StackTrace? stack,
    String? reason,
    Map<String, Object?>? keys,
  });
}
