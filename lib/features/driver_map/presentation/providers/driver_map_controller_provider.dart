import 'package:driver_app/features/driver_map/presentation/controllers/driver_map_controller.dart';
import 'package:driver_app/features/driver_map/presentation/states/driver_map_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final driverMapControllerProvider =
NotifierProvider<DriverMapController, DriverMapState>(
  DriverMapController.new,
);