import 'package:driver_app/features/rides/domain/repositories/ride_websocket_repository.dart';

class CancelRideUsecase {
  final RideRepository rideRepository;
  CancelRideUsecase( this.rideRepository);
  Future<void> call(String rideId) {
    return rideRepository.cancelRide(rideId);
  }
}
