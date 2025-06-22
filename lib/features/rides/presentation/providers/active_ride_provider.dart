import 'package:driver_app/core/providers/rides_provider.dart';
import 'package:driver_app/features/rides/presentation/notifiers/active_ride_notifier.dart';
import 'package:driver_app/features/rides/presentation/states/ative_ride_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final activeRideProvider =
    StateNotifierProvider<RideActiveNotifier, ActiveRideState?>((ref) {
      return RideActiveNotifier(
        ref,
        ref.watch(completeRideUsecaseProvider),
        ref.watch(pickUpUsecaseProvider),
        ref.watch(cancelRideUsecaseProvider)
      );
    });
