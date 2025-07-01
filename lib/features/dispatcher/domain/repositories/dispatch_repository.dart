import 'package:driver_app/features/bootstrap/domain/entities/ride/ride.dart';
import 'package:driver_app/features/dispatcher/domain/entities/cancel_ride.dart';
import 'package:driver_app/features/dispatcher/domain/entities/initial_screen.dart';
import 'package:driver_app/features/rides/domain/entities/ride_message_dto.dart';

abstract class  DispatchRepository {
  Future<InitialScreen> initialScreen();
  void dispatchNewRide(Ride ride);
  void updateRide(Ride ride);
  void cancelRide(CancelRide ride);
  Stream<Map<String,String>> getAckDispatch();
  Stream<RideMessageDto> getEventsActiveRide();
}