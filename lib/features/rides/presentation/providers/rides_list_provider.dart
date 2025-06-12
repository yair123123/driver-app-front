
import 'package:driver_app/core/providers/rides_provider.dart';
import 'package:driver_app/features/rides/presentation/notifiers/ride_notifier.dart';
import 'package:driver_app/features/rides/presentation/states/station_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rideNotifierProvider = StateNotifierProvider<RideNotifier,List<StationState>>((ref)  {
  final listenToNewRides = ref.watch(listenToNewRidesUseCaseProvider);
  return RideNotifier(ref, listenToNewRides);
});