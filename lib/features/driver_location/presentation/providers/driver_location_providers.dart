import 'package:driver_app/features/driver_location/presentation/controllers/driver_location_tracking_controller.dart';
import 'package:driver_app/features/driver_location/presentation/states/driver_location_tracking_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

export 'driver_location_dependencies.dart';

final driverLocationTrackingControllerProvider = NotifierProvider<
  DriverLocationTrackingController,
  DriverLocationTrackingState
>(DriverLocationTrackingController.new);
