import 'package:driver_app/features/rides/domain/entities/ride/ride_map_item.dart';
import 'package:driver_app/features/rides/presentation/controllers/ride_map_rides_controller.dart';
import 'package:driver_app/features/rides/presentation/controllers/rides_controller.dart';
import 'package:driver_app/features/rides/presentation/states/ride_map_rides_state.dart';
import 'package:driver_app/features/rides/presentation/states/rides_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ridesControllerProvider =
    AsyncNotifierProvider<RidesController, RidesState>(RidesController.new);

final rideMapRidesControllerProvider =
    NotifierProvider<RideMapRidesController, RideMapRidesState>(
      RideMapRidesController.new,
    );

final rideMapItemsProvider = Provider<List<RideMapItem>>((ref) {
  return ref.watch(rideMapRidesControllerProvider).rides;
});
