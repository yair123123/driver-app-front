import 'package:driver_app/features/rides/domain/repositories/ride_websocket_repository.dart';

class CompleteRideUsecase {
  final RideRepository rideRepository;
  CompleteRideUsecase( this.rideRepository);
  Future<void> call(String rideId) {
    return rideRepository.completeRide(rideId);
  }
}
