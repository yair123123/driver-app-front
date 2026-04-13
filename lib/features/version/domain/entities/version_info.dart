class VersionInfo {
  final String serviceVersion;
  final String minSupportedAppVersion;
  final String latestAppVersion;
  final String? appVersion;
  final bool? mustUpdate;
  final String? updateUrl;
  final String? updateMessage;

  const VersionInfo({
    required this.serviceVersion,
    required this.minSupportedAppVersion,
    required this.latestAppVersion,
    required this.appVersion,
    required this.mustUpdate,
    required this.updateUrl,
    required this.updateMessage,
  });

  bool get requiresForceUpdate => mustUpdate == true;
}
