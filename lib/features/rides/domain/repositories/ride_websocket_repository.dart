import 'package:driver_app/features/rides/domain/entities/ride_dto.dart';

abstract class RideRepository {
  Stream<RideDto> listenToNewEventsRides();
  Future<void> takeRide(Map<String, int> takeRide);
  Future<void> pickup(Map<String, int> takeRide);
  Future<void> completeRide(Map<String, int> takeRide);
}
