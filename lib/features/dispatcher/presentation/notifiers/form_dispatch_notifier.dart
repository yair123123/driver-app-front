import 'package:driver_app/core/entities/ride.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/dispatch_ride_usecase.dart';
import 'package:driver_app/features/dispatcher/presentation/states/form_dispatch_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormDispatchNotifier extends StateNotifier<DispatchState> {
  final DispatchNewRideUsecase dispatchNewRideUsecase;
  FormDispatchNotifier(this.dispatchNewRideUsecase)
    : super(DispatchState.initial(),
      );


  Future<void> addRide(String text) async {

    state = state.copyWith(isLoading: true);
    try {
      final rideDetails = text;
      final lines = rideDetails.split('\n');
      if (lines.length < 7) {
        state = state.copyWith(
          isLoading: false,
          errorMessage:
              'אנא ודא שמילאת את כל השדות.',
        );
        return;
      }
      final cost = int.tryParse(lines[4]);
      if (cost == null) {
        state = state.copyWith(
          isLoading: false,
          errorMessage: 'המחיר חייב להיות מספר.',
        );
        return;
      }
      final ride = Ride.initialRideFromLines(lines); 
      dispatchNewRideUsecase(ride);
      state = state.copyWith(isSending: true, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isSending: false,
        errorMessage: 'שגיאה בשליחת נסיעה: $e',
      );
    }
  }
}
