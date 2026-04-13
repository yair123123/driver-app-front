import 'package:driver_app/features/version/domain/entities/version_info.dart';

class VersionInfoModel {
  final String serviceVersion;
  final String minSupportedAppVersion;
  final String latestAppVersion;
  final String? appVersion;
  final bool? mustUpdate;
  final String? updateUrl;
  final String? updateMessage;

  const VersionInfoModel({
    required this.serviceVersion,
    required this.minSupportedAppVersion,
    required this.latestAppVersion,
    required this.appVersion,
    required this.mustUpdate,
    required this.updateUrl,
    required this.updateMessage,
  });

  factory VersionInfoModel.fromJson(Map<String, dynamic> json) {
    return VersionInfoModel(
      serviceVersion: json['service_version']?.toString() ?? '',
      minSupportedAppVersion:
          json['min_supported_app_version']?.toString() ?? '',
      latestAppVersion: json['latest_app_version']?.toString() ?? '',
      appVersion: json['app_version']?.toString(),
      mustUpdate: json['must_update'] as bool?,
      updateUrl: json['update_url']?.toString(),
      updateMessage: json['update_message']?.toString(),
    );
  }

  VersionInfo toEntity() {
    return VersionInfo(
      serviceVersion: serviceVersion,
      minSupportedAppVersion: minSupportedAppVersion,
      latestAppVersion: latestAppVersion,
      appVersion: appVersion,
      mustUpdate: mustUpdate,
      updateUrl: updateUrl,
      updateMessage: updateMessage,
    );
  }
}
