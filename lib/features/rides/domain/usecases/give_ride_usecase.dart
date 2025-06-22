import 'package:driver_app/features/rides/domain/entities/ride_dto.dart';
import 'package:driver_app/features/rides/domain/repositories/ride_websocket_repository.dart';

class GiveRideUsecase {
  final RideRepository rideRepository;
  GiveRideUsecase( this.rideRepository);
  Future<void> call(String rideId) {
    return rideRepository.giveRide(rideId);
  }
}

class ConfirmGiveRideUsecase {
  final RideRepository rideRepository;
  ConfirmGiveRideUsecase({required this.rideRepository});
  Future<RideMessageDto?> call (String rideId) async {
    try {
      return await rideRepository
          .getAckReserve()
          .firstWhere((ack) => ack.content['id'] == rideId)
          .timeout(Duration(seconds: 10));
    } catch (e) {
      print('Error getting give ride acknowledgment: $e');
      return null;
    }
  }
}
