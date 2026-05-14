import 'package:driver_app/features/availability/presentation/states/driver_availability_state.dart';
import 'package:driver_app/features/permission/controllers/location_permission_controller.dart';
import 'package:driver_app/features/permission/services/location_permission_service.dart';
import 'package:driver_app/features/realtime/domain/entities/realtime_connection_state.dart';
import 'package:driver_app/features/realtime/presentation/providers/realtime_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../driver_location/presentation/providers/driver_location_dependencies.dart';

class DriverAvailabilityController extends Notifier<DriverAvailabilityState> {
  @override
  DriverAvailabilityState build() {
    ref.listen<RealtimeConnectionState>(
      realtimeConnectionControllerProvider,
          (_, next) {
        if (next.status == RealtimeConnectionStatus.disconnected &&
            state.isAvailable) {
          state = const DriverAvailabilityState.offline();
        }

        if (next.status == RealtimeConnectionStatus.error) {
          state = DriverAvailabilityState.error(
            next.message ?? 'Realtime connection failed.',
          );
        }
      },
    );

    return const DriverAvailabilityState.offline();
  }

  Future<void> setAvailable(bool available) async {
    if (available) {
      await enable();
      return;
    }

    await disable();
  }

  Future<void> enable() async {
    if (state.isAvailable ||
        state.status == DriverAvailabilityStatus.enabling) {
      return;
    }

    state = const DriverAvailabilityState.enabling();

    final backgroundLocation = await ref
        .read(locationPermissionControllerProvider.notifier)
        .requestAlways();

    if (backgroundLocation != LocationAuth.granted) {
      state = const DriverAvailabilityState.error(
        'Background location permission is required to enter live dispatch mode.',
      );
      return;
    }

    final locationController = ref.read(
      driverLocationTrackingControllerProvider.notifier,
    );

    await locationController.start();

    final locationState = ref.read(driverLocationTrackingControllerProvider);

    if (locationState.location == null) {
      state = DriverAvailabilityState.error(
        locationState.message ??
            'Location permission or service is not available.',
      );
      return;
    }

    final didConnect = await ref
        .read(realtimeConnectionControllerProvider.notifier)
        .connect();

    if (!didConnect) {
      state = const DriverAvailabilityState.error(
        'Unable to enter live dispatch mode.',
      );
      return;
    }

    state = const DriverAvailabilityState.available();
  }

  Future<void> disable() async {
    if (state.isOffline || state.status == DriverAvailabilityStatus.disabling) {
      return;
    }

    state = const DriverAvailabilityState.disabling();

    await ref.read(realtimeConnectionControllerProvider.notifier).disconnect();

    state = const DriverAvailabilityState.offline();
  }
}