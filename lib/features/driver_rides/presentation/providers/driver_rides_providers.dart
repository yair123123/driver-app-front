import 'package:driver_app/features/driver_rides/domain/entities/driver_ride_preview.dart';
import 'package:driver_app/features/driver_rides/presentation/controllers/driver_map_rides_controller.dart';
import 'package:driver_app/features/driver_rides/presentation/states/driver_map_rides_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final driverMapRidesControllerProvider =
    NotifierProvider<DriverMapRidesController, DriverMapRidesState>(
      DriverMapRidesController.new,
    );

final driverMapRidePreviewsProvider = Provider<List<DriverRidePreview>>((ref) {
  return ref.watch(driverMapRidesControllerProvider).rides;
});
