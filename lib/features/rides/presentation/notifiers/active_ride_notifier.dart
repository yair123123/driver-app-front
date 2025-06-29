import 'package:driver_app/core/app/app_state_notifier.dart';
import 'package:driver_app/core/enums/ride_step.dart';
import 'package:driver_app/core/providers/rides_provider.dart';
import 'package:driver_app/features/bootstrap/domain/entities/ride/ride.dart';

import 'package:driver_app/features/rides/presentation/providers/rides_list_provider.dart';
import 'package:driver_app/features/rides/presentation/states/ative_ride_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

class RideActiveNotifier extends AsyncNotifier<ActiveRideState?> {
  @override
  FutureOr<ActiveRideState?> build() => null;

  void startActiveRide(Ride ride) {
    ref.read(appStateNotifierProvider.notifier).setActiveRide(ride);
    state = AsyncData(ActiveRideState.initial(ride));
  }

  (String, String) get getData => switch (state) {
    AsyncData(value: final val) when val != null =>
      {
        RideNextStep.pickup: (
          "סע ל־${val.ride.origin.city} ${val.ride.origin.neighborhood ?? ''}",
          "אספתי",
        ),
        RideNextStep.completed: (
          "סע ל־${val.ride.destination.city} ${val.ride.destination.neighborhood ?? ''}",
          "סיים נסיעה",
        ),
      }[val.step]!,
    _ => ("", ""),
  };

  void cancel() {
    ref.read(cancelRideUsecaseProvider);
  }

  Future<void> callPassenger() async {
    if (state.value == null || state.value!.ride.passengerPhone.isEmpty) {
      print("No phone number available");
      return;
    }
    final Uri uri = Uri(scheme: 'tel', path: state.value!.ride.passengerPhone);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      print("cant open the phone");
    }
  }

  Future<void> next() async {
    final pickupUsecase = ref.read(pickUpUsecaseProvider);
    final completeRideUsecase = ref.read(completeRideUsecaseProvider);

    if (state.value == null) return;

    switch (state.value!.step) {
      case RideNextStep.pickup:
        await safeRun(() async {
          await pickupUsecase(state.value!.ride.id);
          final confirmGiveRideUsecase = ref.read(confirmGiveRideUsecaseProvider);
          final res = await confirmGiveRideUsecase(state.value!.ride.id);
          if (res == null) {
            state = AsyncError(
              Exception('לא הצלחנו לשלוח עדבון נסה שוב'),
              StackTrace.current,
            );
            return null;
          }
          return state.value!.copyWith(step: RideNextStep.completed);
        });
        break;

      case RideNextStep.completed:
        final success = await safeRun(() async {
          await completeRideUsecase(state.value!.ride.id);
          final confirmFinishingRideUsecase = ref.read(confirmfinishingRideUsecaseProvider);
          final res = await confirmFinishingRideUsecase(state.value!.ride.id);
          if (res == null) {
            throw Exception('לא הצלחנו לקבל את אישור סיום הנסיעה נסה שוב');
          }
          return null;
        });
        if (!success) return;
        ref.read(appStateNotifierProvider.notifier).setActiveRide(null);
        ref
            .read(rideNotifierProvider.notifier)
            .setSelectedRide(selectedRide: null);
        ref.invalidateSelf();
        break;
    }
  }

  Future<bool> safeRun(Future<ActiveRideState?> Function() cb) async {
    state = const AsyncLoading();

    final result = await AsyncValue.guard(cb);

    if (result.hasError) {
      state = AsyncError(result.error!, result.stackTrace!);
      return false;
    }

    if (result.hasValue && result.value == null) {
      state = const AsyncData(null); 
      return true;
    }

    state = AsyncData(result.value!);
    return true;
  }
}
