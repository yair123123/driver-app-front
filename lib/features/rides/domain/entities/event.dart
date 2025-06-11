import 'package:driver_app/core/entities/ride.dart';

abstract class RideEvent {}

class NewRideEvent extends RideEvent {
  final Ride ride;
  NewRideEvent(this.ride);
}

class CancelRideEvent extends RideEvent {
  final String rideId;
  CancelRideEvent(this.rideId);
}

