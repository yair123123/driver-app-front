import 'package:driver_app/core/entities/ride.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/dispatch_ride_usecase.dart';
import 'package:driver_app/features/dispatcher/presentation/providers/dispatch_provider.dart';
import 'package:driver_app/features/dispatcher/presentation/states/form_dispatch_state.dart';
import 'package:driver_app/features/main/domein/entities/station.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormDispatchNotifier extends StateNotifier<DispatchState> {
  final Ref ref;
  final DispatchNewRideUsecase dispatchNewRideUsecase;
  FormDispatchNotifier(this.dispatchNewRideUsecase,this.ref)
    : super(DispatchState.initial(ref.read(initialScreenProvider).valueOrNull?.stations.first),
      );
  void resetForm(){
  
    state = DispatchState.initial(ref.read(initialScreenProvider).value!.stations.first);
  }
  void onChangeStation(Station station){
    state = state.copyWith(station: station); 
  }
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
      final ride = Ride.initialRideFromLines(lines,state.station!.station_id); 
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
