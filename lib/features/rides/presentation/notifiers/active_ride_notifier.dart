import 'package:driver_app/core/entities/ride.dart';
import 'package:driver_app/core/enums/ride_step.dart';
import 'package:driver_app/features/main/presentation/providers/app_provider.dart';
import 'package:driver_app/features/rides/domain/usecases/cancel_ride_usecase.dart';
import 'package:driver_app/features/rides/domain/usecases/complete_ride.dart';
import 'package:driver_app/features/rides/domain/usecases/pickup.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_list_provider.dart';
import 'package:driver_app/features/rides/presentation/states/ative_ride_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class RideActiveNotifier extends StateNotifier<ActiveRideState?> {
  final Ref ref;
  final PickupUsecase pickupUsecase;
  final CompleteRideUsecase completeRideUsecase;
  final CancelRideUsecase cancelRideUsecase;
  RideActiveNotifier(
    this.ref,
    this.completeRideUsecase,
    this.pickupUsecase,
    this.cancelRideUsecase,
  ) : super(null);
  (String, String) get getData =>
      {
        RideNextStep.pickup: (
          "סע ל־${state!.ride.origin.city} ${state!.ride.origin.neighborhood ?? ''}",
          "אספתי",
        ),
        RideNextStep.completed: (
          "סע ל־${state!.ride.destination.city} ${state!.ride.destination.neighborhood ?? ''}",
          "סיים נסיעה",
        ),
      }[state!.step]!;

  void startActiveRide(Ride ride) {
    ref.read(appInitialProvider.notifier).startRide();
    state = ActiveRideState.initial(ride);
  }

  void cancel() {
    
  }
  Future<void> callPassenger() async{
    final Uri uri = Uri(scheme: 'tel', path: state!.ride.passengerPhone);
    if (await canLaunchUrl(uri) ){
      await launchUrl(uri);
    } else {
      print("cant open the phone");
    }
  }

  void next() {
    if (state == null) {
      return;
    }
    switch (state!.step) {
      case RideNextStep.pickup:
        pickupUsecase(state!.ride.id);
        state = state!.copyWith(step: RideNextStep.completed);
        break;
      case RideNextStep.completed:
        completeRideUsecase(state!.ride.id);
        ref.read(appInitialProvider.notifier).finishingRide();
        ref.read(rideNotifierProvider).copyWith(selectedRide: null);
        state = null;
    }
  }
}
