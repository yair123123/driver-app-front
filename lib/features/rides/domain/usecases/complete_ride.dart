import 'package:driver_app/features/rides/domain/entities/ride_message_dto.dart';
import 'package:driver_app/features/rides/domain/repositories/ride_websocket_repository.dart';

class CompleteRideUsecase {
  final RideRepository rideRepository;
  CompleteRideUsecase( this.rideRepository);
  Future<void> call(String rideId) {
    return rideRepository.completeRide(rideId);
  }
}
class ConfirmFinishingRideUsecase {
  final RideRepository rideRepository;
  ConfirmFinishingRideUsecase({required this.rideRepository});
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