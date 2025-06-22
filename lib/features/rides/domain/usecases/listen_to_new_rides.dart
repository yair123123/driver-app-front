import 'dart:async';

import 'package:driver_app/core/entities/ride.dart';
import 'package:driver_app/core/enums/ride_operation_code.dart';
import 'package:driver_app/features/rides/domain/entities/event.dart';
import 'package:driver_app/features/rides/domain/repositories/ride_websocket_repository.dart';

class ListenToNewEventsUsecase {
  final RideRepository rideRepository;

  ListenToNewEventsUsecase(this.rideRepository);
  Stream<RideEvent?> call() {
    return rideRepository
        .listenToNewEventsRides()
        .map((dto) {
          if (dto.operationCode == RideOperationCode.advertiseToDrivers) {
            return NewRideEvent(Ride.fromJson(dto.content));
          } else if (dto.operationCode == RideOperationCode.advertiseTaken) {
            return CancelRideEvent(dto.content['id']);
          } else {
            return null;
          }
        })
        .where((event) => event != null);
  }
}
