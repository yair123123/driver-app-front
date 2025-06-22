import 'package:driver_app/features/rides/domain/entities/ride_message_dto.dart';

abstract class RideRepository {
  Stream<RideMessageDto> getAckReserve();
  Stream<RideMessageDto> listenToNewEventsRides();
  Future<void> giveRide(String rideId);
  Future<void> pickup(String rideId);
  Future<void> completeRide(String rideId);
  Future<void> cancelRide(String rideId);
}
