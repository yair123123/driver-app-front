import 'package:driver_app/features/realtime/domain/entities/realtime_connection_state.dart';
import 'package:driver_app/features/realtime/domain/entities/socket_envelope.dart';
import 'package:driver_app/features/realtime/domain/entities/socket_outgoing_message.dart';

abstract class RealtimeRepository {
  Stream<SocketEnvelope> get events;
  Stream<RealtimeConnectionState> get connectionStates;

  Future<void> connect();
  Future<void> disconnect();
  Future<void> send(SocketOutgoingMessage message);
}
