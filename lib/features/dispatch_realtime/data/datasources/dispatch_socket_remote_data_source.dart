import 'package:driver_app/core/ws/enums/ws_connection_state.dart';
import 'package:driver_app/core/ws/transport/socket_connection_manager.dart';
import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_event.dart';
import 'package:driver_app/features/rides/domain/entities/ride_message_dto.dart';

class DispatchSocketRemoteDataSource {
  DispatchSocketRemoteDataSource(this._socketService, this._events);

  final SocketConnectionManager _socketService;
  final Stream<DispatchRealtimeEvent> _events;

  Future<bool> connect(String token) {
    return _socketService.connect(token);
  }

  Future<void> disconnect() async {
    _socketService.disconnect();
  }

  Stream<bool> connectionStates() {
    return _socketService.connectionStates
        .map((state) => state == SocketConnectionState.connected);
  }

  Stream<DispatchRealtimeEvent> rideMessages() {
    return _events;
  }

  void sendRideAction(RideMessageDto message) {
    _socketService.sendJson(message.toJson());
  }
}
