import 'dart:collection';

import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/stations/data/datasources/stations_remote_data_source.dart';
import 'package:driver_app/features/stations/data/repositories/stations_repository_impl.dart';
import 'package:driver_app/features/stations/domain/entities/station.dart';
import 'package:driver_app/features/stations/domain/repositories/stations_repository.dart';
import 'package:driver_app/features/stations/domain/usecases/get_all_stations_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stations_providers.g.dart';

final stationsRemoteDataSourceProvider = Provider<StationsRemoteDataSource>((
  ref,
) {
  return StationsRemoteDataSource(ref.watch(apiClientProvider));
});

final stationsRepositoryProvider = Provider<StationsRepository>((ref) {
  return StationsRepositoryImpl(ref.watch(stationsRemoteDataSourceProvider));
});

final getAllStationsUseCaseProvider = Provider<GetAllStationsUseCase>((ref) {
  return GetAllStationsUseCase(ref.watch(stationsRepositoryProvider));
});

@Riverpod(keepAlive: true)
Future<List<Station>> allStations(AllStationsRef ref) async {
  return ref.watch(getAllStationsUseCaseProvider)();
}

@riverpod
Future<Map<int, Station>> stationsMap(StationsMapRef ref) async {
  final stations = await ref.watch(allStationsProvider.future);

  return {
    for (final station in stations) station.id: station,
  };
}

@riverpod
Future<List<Station>> stationsByIds(
  StationsByIdsRef ref,
  StationIdsFilter filter,
) async {
  final stationsMap = await ref.watch(stationsMapProvider.future);
  return [
    for (final id in filter.ids)
      if (stationsMap[id] case final station?) station,
  ];
}

class StationIdsFilter {
  final List<int> ids;

  StationIdsFilter(Iterable<int> ids)
    : ids = List<int>.unmodifiable(LinkedHashSet<int>.from(ids));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! StationIdsFilter || ids.length != other.ids.length) {
      return false;
    }

    for (var index = 0; index < ids.length; index++) {
      if (ids[index] != other.ids[index]) {
        return false;
      }
    }

    return true;
  }

  @override
  int get hashCode => Object.hashAll(ids);
}
