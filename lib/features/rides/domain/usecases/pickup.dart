import 'package:driver_app/features/rides/domain/repositories/ride_websocket_repository.dart';

class PickupUsecase {
  final RideRepository rideRepository;
  PickupUsecase( this.rideRepository);
  Future<void> call(String rideId) {
    return rideRepository.pickup(rideId);
  }
}
