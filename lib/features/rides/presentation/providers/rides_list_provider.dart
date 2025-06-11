
import 'package:driver_app/core/providers/rides_provider.dart';
import 'package:driver_app/features/rides/presentation/notifiers/ride_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rideNotifierProvider = StateNotifierProvider((ref)  {
  final listenToNewRides = ref.watch(listenToNewRidesUseCaseProvider);
  return RideNotifier(ref, listenToNewRides);
});