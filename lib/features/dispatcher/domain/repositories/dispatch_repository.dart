import 'package:driver_app/core/entities/ride.dart';
import 'package:driver_app/features/dispatcher/domain/entities/cancel_ride.dart';
import 'package:driver_app/features/dispatcher/domain/entities/initail_screen.dart';

abstract class  DispatchRepository {
  Future<InitialScreen> initialScreen();
  void dispatchNewRide(Ride ride);
  void updateRide(Ride ride);
  void cancelRide(CancelRide ride);
  Stream<Map<String,String>> getAckDispatch();
}