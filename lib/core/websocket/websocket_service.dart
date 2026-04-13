import 'package:driver_app/core/ws/enums/ws_connection_state.dart';
import 'package:driver_app/core/ws/providers/ws_providers.dart';
import 'package:driver_app/core/ws/transport/socket_connection_manager.dart';
import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_event.dart';
import 'package:driver_app/features/rides/domain/entities/ride_message_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WebSocketService {
  WebSocketService(this._ref);

  final Ref _ref;

  SocketConnectionManager get _manager =>
      _ref.read(socketConnectionManagerProvider);

  Stream<SocketConnectionState> get connectionStateStream =>
      _manager.connectionStates;

  Future<bool> connect(String token) {
    return _manager.connect(token);
  }

  Future<bool> reconnect() {
    return _manager.reconnect();
  }

  Future<void> disconnect() {
    return _manager.disconnect();
  }

  void sendRideAction(RideMessageDto message) {
    _manager.sendJson(message.toJson());
  }

  void sendRaw(String message) {
    _manager.sendRaw(message);
  }

  Stream<DispatchRealtimeEvent> rideEvents() {
    return _ref.read(rideWsHandlerProvider).events;
  }

  void dispose() {
    _manager.dispose();
  }
}

