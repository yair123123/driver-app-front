import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/settings/data/models/settings_model.dart';

class SettingsRemoteDataSource {
  final ApiClient apiClient;

  SettingsRemoteDataSource(this.apiClient);

  Future<SettingsModel> getSettings() async {
    final result = await apiClient.get<SettingsModel>(
      '/me',
      fromJson: (json) => SettingsModel.fromServerJson(_asMap(json)),
    );

    return result.match((failure) => throw failure, (settings) => settings);
  }

  Future<SettingsModel> updateSettings(SettingsModel settings) async {
    final result = await apiClient.patch<SettingsModel>(
      '/me/settings',
      body: settings.toJson(),
      fromJson:
          (json) => SettingsModel.fromServerJson(
            json is Map ? Map<String, dynamic>.from(json) : settings.toJson(),
          ),
    );

    return result.match((failure) => throw failure, (saved) => saved);
  }

  Map<String, dynamic> _asMap(dynamic rawJson) {
    if (rawJson is Map<String, dynamic>) {
      return rawJson;
    }
    if (rawJson is Map) {
      return Map<String, dynamic>.from(rawJson);
    }
    return <String, dynamic>{};
  }
}
