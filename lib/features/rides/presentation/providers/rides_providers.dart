import 'package:driver_app/features/rides/domain/entities/ride/ride.dart';
import 'package:driver_app/features/rides/presentation/controllers/rides_controller.dart';
import 'package:driver_app/features/rides/presentation/states/rides_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ridesControllerProvider =
    AsyncNotifierProvider<RidesController, RidesState>(RidesController.new);

final visibleRidesProvider = FutureProvider<List<Ride>>((ref) async {
  final ridesState = await ref.watch(ridesControllerProvider.future);
  final query = ridesState.query;

  return ridesState.rides
      .where((ride) {
        if (query.stationId != null && ride.stationId != query.stationId) {
          return false;
        }

        return true;
      })
      .toList(growable: false);
});

final ridesByStationProvider = FutureProvider.family<List<Ride>, int>((
  ref,
  stationId,
) async {
  final visibleRides = await ref.watch(visibleRidesProvider.future);
  return visibleRides
      .where((ride) => ride.stationId == stationId)
      .toList(growable: false);
});
