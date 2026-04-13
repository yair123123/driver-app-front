import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_event.dart';
import 'package:driver_app/features/rides/domain/entities/ride_message_dto.dart';

abstract class DispatchSocketRepository {
  Future<bool> connect(String token);

  Future<void> disconnect();

  Stream<bool> connectionStates();

  Stream<DispatchRealtimeEvent> rideMessages();

  void sendRideAction(RideMessageDto message);
}
