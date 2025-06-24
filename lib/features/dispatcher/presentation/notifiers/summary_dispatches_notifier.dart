import 'package:driver_app/core/entities/ride.dart';
import 'package:driver_app/features/dispatcher/presentation/states/summary_dispatch_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SummaryDispatchesNotifier extends StateNotifier<List<SummaryDispatchState>> {
  SummaryDispatchesNotifier() : super([]);

void addDispatch(Ride ride) {
  final newState = [...state, SummaryDispatchState.initialFromRide(ride)];
  state = newState;

  print(state.single); 
}



}