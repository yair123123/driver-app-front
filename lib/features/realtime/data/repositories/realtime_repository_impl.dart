import 'package:driver_app/features/realtime/data/datasources/realtime_remote_datasource.dart';
import 'package:driver_app/features/realtime/data/mappers/socket_envelope_mapper.dart';
import 'package:driver_app/features/realtime/domain/entities/realtime_connection_state.dart';
import 'package:driver_app/features/realtime/domain/entities/socket_envelope.dart';
import 'package:driver_app/features/realtime/domain/entities/socket_outgoing_message.dart';
import 'package:driver_app/features/realtime/domain/repositories/realtime_repository.dart';

class RealtimeRepositoryImpl implements RealtimeRepository {
  const RealtimeRepositoryImpl(this._remoteDataSource);

  final RealtimeRemoteDataSource _remoteDataSource;

  @override
  Stream<SocketEnvelope> get events {
    return _remoteDataSource.events.map((dto) => dto.toEntity());
  }

  @override
  Stream<RealtimeConnectionState> get connectionStates {
    return _remoteDataSource.connectionStates;
  }

  @override
  Future<void> connect() {
    return _remoteDataSource.connect();
  }

  @override
  Future<void> disconnect() {
    return _remoteDataSource.disconnect();
  }

  @override
  Future<void> send(SocketOutgoingMessage message) {
    return _remoteDataSource.send(message.toDto());
  }
}
