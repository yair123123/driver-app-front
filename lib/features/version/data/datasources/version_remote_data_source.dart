import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/version/data/models/version_info_model.dart';

class VersionRemoteDataSource {
  final ApiClient apiClient;

  VersionRemoteDataSource(this.apiClient);

  Future<VersionInfoModel> checkAppVersion({required String appVersion}) async {
    final result = await apiClient.get<VersionInfoModel>(
      '/version',
      queryParams: {'app_version': appVersion},
      unwrapData: false,
      fromJson: (json) => VersionInfoModel.fromJson(_asMap(json)),
    );

    return result.match(
      (failure) => throw failure,
      (versionInfo) => versionInfo,
    );
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
