import 'dart:async';

import 'package:driver_app/core/entities/ride.dart';
import 'package:driver_app/features/rides/domain/entities/event.dart';
import 'package:driver_app/features/rides/domain/usecases/listen_to_new_rides.dart';
import 'package:driver_app/features/rides/presentation/states/station_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RideNotifier extends StateNotifier<List<StationState>> {
  final ListenToNewEvents listenToNewEvents;
  final Ref ref;
  late StreamSubscription<RideEvent?> _subscription;

  RideNotifier(this.ref,this.listenToNewEvents) : super(StationState.initialStations(ref)){
    _subscription = listenToNewEvents().listen((event) {
      if (event is NewRideEvent) {
        NewRide(event.ride);
      } else if (event is CancelRideEvent) {
        TakenRide(event.rideId);
      }
    });
  }
  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }


  void NewRide(Ride ride){
        state = [
      for (final station in state)
        station.station.station_id == ride.stationId
            ? station.copyWith(rides: [...station.rides, ride])
            : station,
    ];
  }

  void TakenRide( rideId){
    state = [
      for (final station in state)
        station.copyWith(
          rides: station.rides.where((ride) => ride.id != rideId).toList(),
        ),
    ];

  }
}