import 'package:driver_app/core/env/config_service.dart';
import 'package:driver_app/features/driver_map/presentation/providers/driver_map_camera_controller_provider.dart';
import 'package:driver_app/features/driver_map/presentation/widgets/driver_map_view.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_providers.dart';
import 'package:driver_app/features/rides/presentation/widgets/driver_hub_rides_sheet.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
class DriverHubScreen extends HookConsumerWidget {
  const DriverHubScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styleUrl = ref.read(appConfigProvider).map.styleUrl;
    final cameraController = ref.read(driverMapCameraControllerProvider);

    final ridesState = ref.watch(rideMapRidesControllerProvider);

    return Scaffold(
      body: Stack(
        children: [
          DriverMapView(styleUrl: styleUrl),

          DriverHubRidesSheet(
            rides: ridesState.rides,
            onRideTap: cameraController.moveToRide,
          ),
        ],
      ),
    );
  }
}