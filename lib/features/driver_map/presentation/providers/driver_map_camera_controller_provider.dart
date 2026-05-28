import 'package:driver_app/features/driver_map/presentation/controllers/driver_map_camera_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final driverMapCameraControllerProvider = Provider<DriverMapCameraController>((
  ref,
) {
  final controller = DriverMapCameraController(ref);
  ref.onDispose(controller.dispose);
  return controller;
});
