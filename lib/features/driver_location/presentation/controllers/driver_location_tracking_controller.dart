import 'dart:async';

import 'package:driver_app/features/driver_location/domain/entities/driver_location.dart';
import 'package:driver_app/features/driver_location/presentation/providers/driver_location_dependencies.dart';
import 'package:driver_app/features/driver_location/presentation/states/driver_location_tracking_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DriverLocationTrackingController
    extends Notifier<DriverLocationTrackingState> {
  StreamSubscription<DriverLocation>? _locationSubscription;

  @override
  DriverLocationTrackingState build() {
    ref.onDispose(() => _locationSubscription?.cancel());
    return const DriverLocationTrackingState.idle();
  }

  Future<void> start() async {
    if (state.status == DriverLocationTrackingStatus.starting ||
        state.isTracking) {
      return;
    }

    state = const DriverLocationTrackingState.starting();

    await _locationSubscription?.cancel();

    final location = await ref.read(getCurrentDriverLocationUseCaseProvider)();
    if (location == null) {
      _locationSubscription = null;
      state = const DriverLocationTrackingState.error(
        'Location permission or service is not available.',
      );
      return;
    }

    ref.read(currentDriverLocationProvider.notifier).state = location;
    state = DriverLocationTrackingState.tracking(location);

    _locationSubscription = ref
        .read(watchDriverLocationUseCaseProvider)
        .call()
        .listen(
          (location) {
            ref.read(currentDriverLocationProvider.notifier).state = location;
            state = DriverLocationTrackingState.tracking(location);
          },
          onError: (Object error) {
            state = DriverLocationTrackingState.error(
              error.toString(),
              location: state.location,
            );
          },
        );
  }

  Future<void> stop() async {
    await _locationSubscription?.cancel();
    _locationSubscription = null;
    state = DriverLocationTrackingState.stopped(location: state.location);
  }
}
