import 'package:driver_app/core/providers/rides_provider.dart';
import 'package:driver_app/features/rides/presentation/notifiers/ride_notifier.dart';
import 'package:driver_app/features/rides/presentation/states/ride_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rideNotifierProvider = StateNotifierProvider<RideNotifier, RideState>((
  ref,
) {
  final listenToNewRides = ref.watch(listenToNewRidesUseCaseProvider);
  final giveRideUsecase = ref.watch(giveRideUsecaseProvider);
  final confirmGiveRideUsecase = ref.watch(confirmGiveRideUsecaseProvider);
  return RideNotifier(
    ref,
    listenToNewRides,
    giveRideUsecase,
    confirmGiveRideUsecase,
  );
});
