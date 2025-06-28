import 'dart:async';
import 'package:driver_app/core/enums/ride_operation_code.dart';
import 'package:driver_app/features/bootstrap/domain/entities/ride/ride.dart';
import 'package:driver_app/features/rides/domain/entities/event.dart';
import 'package:driver_app/features/rides/domain/usecases/give_ride_usecase.dart';
import 'package:driver_app/features/rides/domain/usecases/listen_to_new_rides.dart';
import 'package:driver_app/features/rides/presentation/providers/active_ride_provider.dart';
import 'package:driver_app/features/rides/presentation/states/ride_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RideNotifier extends StateNotifier<RideState> {
  final ListenToNewEventsUsecase listenToNewEvents;
  final GiveRideUsecase _giveRideUsecase;
  final ConfirmGiveRideUsecase _confirmGiveRideUsecase;

  final Ref ref;
  late StreamSubscription<RideEvent?> _subscription;

  RideNotifier(
    this.ref,
    this.listenToNewEvents,
    this._giveRideUsecase,
    this._confirmGiveRideUsecase,
  ) : super(RideState.initial(ref)) {
    _subscription = listenToNewEvents().listen((event) {
      if (event is NewRideEvent) {
        newRide(event.ride);
      } else if (event is CancelRideEvent) {
        takenRide(event.Id);
      }
    });
  }
  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
  void setSelectedRide({Ride? selectedRide}) {
    state = state.copyWith(selectedRide: selectedRide);
  }
  void newRide(Ride ride) {
    print("new ride");
    state = state.copyWith(
      stations: [
        for (final station in state.stations)
          station.station_id == ride.stationId
              ? station.copyWith(rides: [...station.rides, ride])
              : station,
      ],
    );
  }

  Future<void> giveRide(Ride ride) async {
    _giveRideUsecase(ride.id);
    final res = await _confirmGiveRideUsecase(ride.id);
    if (res != null) {
      if (res.operationCode == RideOperationCode.alreadyTaken) {
        state = state.copyWith(errorMessage: "נסיעה כבר נמכרה");
        return;
      }
      state = state.copyWith(selectedRide: ride);

      ref.read(activeRideProvider.notifier).startActiveRide(ride);
    } else {
      state = state.copyWith(errorMessage: 'לא הצלחנו לקבל את הנסיעה נסה שוב');
    }
  }

  void takenRide(rideId) {
    print("taken ride");
    state = state.copyWith(
      stations: [
        for (final station in state.stations)
          station.copyWith(
            rides: station.rides.where((ride) => ride.id != rideId).toList(),
          ),
      ],
    );
  }
}
