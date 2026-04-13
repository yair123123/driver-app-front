import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/reference_data/data/models/reference_data_bundle_model.dart';

class ReferenceDataRemoteDataSource {
  ReferenceDataRemoteDataSource(this._apiClient);

  final ApiClient _apiClient;

  Future<ReferenceDataBundleModel> fetchReferenceData() async {
    final result = await _apiClient.get<ReferenceDataBundleModel>(
      '/api/general/get-data',
      unwrapData: false,
      fromJson: (json) => ReferenceDataBundleModel.fromJson(_asMap(json)),
    );

    return result.match((failure) => throw failure, (model) => model);
  }

  Map<String, dynamic> _asMap(dynamic value) {
    if (value is Map<String, dynamic>) {
      return value;
    }
    if (value is Map) {
      return Map<String, dynamic>.from(value);
    }

    return <String, dynamic>{};
  }
}
