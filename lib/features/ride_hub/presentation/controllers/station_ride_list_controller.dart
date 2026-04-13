import 'package:driver_app/core/error/failure.dart';
import 'package:driver_app/features/ride_hub/presentation/states/station_ride_list_state.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_providers.dart';
import 'package:driver_app/features/stations/presentation/providers/stations_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'station_ride_list_controller.g.dart';

@riverpod
class StationRideListController extends _$StationRideListController {
  Future<StationRideListState> build(int stationId) async {
    final stations = await ref.read(
      stationsByIdsProvider(StationIdsFilter([stationId])).future,
    );
    if (stations.isEmpty) {
      throw UnknownFailure();
    }
    final station = stations.first;

    final rides = await ref.watch(ridesByStationProvider(station.id).future);
    return StationRideListState(station: station, rides: rides);
  }
}
