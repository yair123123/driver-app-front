import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/driver_rides/data/dtos/driver_ride_preview_dto.dart';
import 'package:driver_app/features/driver_rides/domain/entities/map_bounds.dart';

abstract class DriverRidesRemoteDataSource {
  Future<List<DriverRidePreviewDto>> getMapRides({required MapBounds bounds});
}

class DriverRidesRemoteDataSourceImpl implements DriverRidesRemoteDataSource {
  const DriverRidesRemoteDataSourceImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<List<DriverRidePreviewDto>> getMapRides({
    required MapBounds bounds,
  }) async {
    final result = await _apiClient.get<dynamic>(
      '/rides/my-driver-rides',
      queryParams: {
        ...bounds.toQueryParameters(),
        'status': 'OPEN',
        'pageSize': 200,
      },
      unwrapData: false,
      fromJson: (json) => json,
    );

    return result.match((failure) => throw failure, _parseRides);
  }

  List<DriverRidePreviewDto> _parseRides(dynamic rawJson) {
    print(rawJson);
    final rawList = _extractRidesList(rawJson);

    return rawList
        .whereType<Object>()
        .map((item) => DriverRidePreviewDto.fromJson(_asMap(item)))
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
