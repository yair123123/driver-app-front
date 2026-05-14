import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride.dart';
import 'package:driver_app/features/rides/presentation/states/rides_query.dart';

import '../models/ride_map_item_dto.dart';

class RidesRemoteDataSource {
  RidesRemoteDataSource(this._apiClient);

  final ApiClient _apiClient;

  Future<List<RideMapItemDto>> getRides(RidesQuery query) async {
    final result = await _apiClient.get<dynamic>(
      '/rides/my-driver-rides',
      queryParams: query.toQueryParameters(),
      unwrapData: false,
      fromJson: (json) => json,
    );

    return result.match((failure) => throw failure, _parseRides);
  }

  List<RideMapItemDto> _parseRides(dynamic rawJson) {
    final rawList = _extractRidesList(rawJson);

    return rawList
        .whereType<Object?>()
        .map((item) => RideMapItemDto.fromJson(_asMap(item)))
        .toList(growable: false);
  }

  List<dynamic> _extractRidesList(dynamic rawJson) {
    if (rawJson is List) {
      return rawJson;
    }

    final map = _asMap(rawJson);
    final candidates = [
      map['rides'],
      map['items'],
      map['results'],
      map['data'],
    ];

    for (final candidate in candidates) {
      if (candidate is List) {
        return candidate;
      }
    }

    return const <dynamic>[];
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
