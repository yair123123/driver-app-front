import 'dart:async';

import 'package:driver_app/core/entities/ride.dart';
import 'package:driver_app/core/enums/type_codes.dart';
import 'package:driver_app/features/rides/domain/entities/event.dart';
import 'package:driver_app/features/rides/domain/repositories/ride_websocket_repository.dart';

class ListenToNewEvents {
  final RideRepository rideRepository;

  ListenToNewEvents( this.rideRepository);
Stream<RideEvent?> call() {
  return rideRepository.listenToNewEventsRides()
    .map((dto) {
      if (dto.typeCode == rideTypeCodeToInt(RideTypeCode.newRide)) {
        return NewRideEvent(Ride.fromJson(dto.content));
      } else if (dto.typeCode == rideTypeCodeToInt(RideTypeCode.takenRide)) {
        return CancelRideEvent(dto.content['ride-id']);
      } else {
        return null;
      }
    }).where((event) => event != null);
}

}
