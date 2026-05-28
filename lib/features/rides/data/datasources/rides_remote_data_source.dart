import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/rides/domain/constants/ride_api_paths.dart';
import 'package:driver_app/features/rides/domain/entities/ride_filter_params.dart';

import '../models/ride_map_item_dto.dart';

abstract class RidesRemoteDataSource {
  Future<List<RideMapItemDto>> getRides(RideFilterParams params);
}

class RidesRemoteDataSourceImpl implements RidesRemoteDataSource {
  const RidesRemoteDataSourceImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<List<RideMapItemDto>> getRides(RideFilterParams params) async {
    final result = await _apiClient.get<dynamic>(
      RideApiPaths.myDriverRides,
      queryParams: params.toQueryParameters(),
      unwrapData: false,
      fromJson: (json) => json,
    );

    return result.match((failure) => throw failure, _parseRides);
  }

  List<RideMapItemDto> _parseRides(dynamic rawJson) {
    final rawList = _extractRidesList(rawJson);

    return rawList
        .whereType<Object>()
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
      if (candidate is Map) {
        final nestedList = _extractRidesList(candidate);
        if (nestedList.isNotEmpty) {
          return nestedList;
        }
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
