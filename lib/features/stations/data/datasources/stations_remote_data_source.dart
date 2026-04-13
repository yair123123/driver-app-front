import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/stations/data/models/station_model.dart';

class StationsRemoteDataSource {
  final ApiClient apiClient;

  StationsRemoteDataSource(this.apiClient);

  Future<List<StationModel>> getAllStations() async {
    final result = await apiClient.get<List<StationModel>>(
      '/stations',
      unwrapData: false,
      fromJson: (json) => _parseStations(json),
    );

    return result.match((failure) => throw failure, (stations) => stations);
  }

  List<StationModel> _parseStations(dynamic rawJson) {
    final rawList = _extractStationsList(rawJson);

    return rawList
        .map((item) => StationModel.fromJson(_asMap(item)))
        .toList(growable: false);
  }

  List<dynamic> _extractStationsList(dynamic rawJson) {
    if (rawJson is List) {
      return rawJson;
    }

    final map = _asMap(rawJson);
    final candidates = [
      map['stations'],
      map['items'],
      map['results'],
      map['data'],
    ];

    for (final candidate in candidates) {
      if (candidate is List) {
        return candidate;
      }
    }

    throw const FormatException('Stations list is missing from response');
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
