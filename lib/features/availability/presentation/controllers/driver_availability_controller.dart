import 'package:driver_app/features/availability/presentation/states/driver_availability_state.dart';
import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_connection_state.dart';
import 'package:driver_app/features/dispatch_realtime/presentation/providers/dispatch_realtime_providers.dart';
import 'package:driver_app/features/driver_location/presentation/providers/driver_location_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DriverAvailabilityController extends Notifier<DriverAvailabilityState> {
  @override
  DriverAvailabilityState build() {
    ref.listen<DispatchConnectionState>(dispatchConnectionControllerProvider, (
      _,
      next,
    ) {
      if (next.status == DispatchConnectionStatus.disconnected &&
          state.isAvailable) {
        state = const DriverAvailabilityState.offline();
      }

      if (next.status == DispatchConnectionStatus.error) {
        state = DriverAvailabilityState.error(
          next.message ?? 'Dispatch connection failed.',
        );
      }
    });

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
    final didConnect =
        await ref.read(dispatchConnectionControllerProvider.notifier).connect();

    state =
        didConnect
            ? const DriverAvailabilityState.available()
            : const DriverAvailabilityState.error(
              'Unable to enter live dispatch mode.',
            );

    if (didConnect) {
      await ref.read(driverLocationTrackingControllerProvider.notifier).start();
    }
  }

  Future<void> disable() async {
    if (state.isOffline || state.status == DriverAvailabilityStatus.disabling) {
      return;
    }

    state = const DriverAvailabilityState.disabling();
    await ref.read(driverLocationTrackingControllerProvider.notifier).stop();
    await ref.read(dispatchConnectionControllerProvider.notifier).disconnect();
    state = const DriverAvailabilityState.offline();
  }
}
