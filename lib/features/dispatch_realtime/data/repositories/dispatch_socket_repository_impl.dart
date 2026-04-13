import 'package:driver_app/features/dispatch_realtime/data/datasources/dispatch_socket_remote_data_source.dart';
import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_event.dart';
import 'package:driver_app/features/dispatch_realtime/domain/repositories/dispatch_socket_repository.dart';
import 'package:driver_app/features/rides/domain/entities/ride_message_dto.dart';

class DispatchSocketRepositoryImpl implements DispatchSocketRepository {
  DispatchSocketRepositoryImpl(this._remoteDataSource);

  final DispatchSocketRemoteDataSource _remoteDataSource;

  @override
  Future<bool> connect(String token) {
    return _remoteDataSource.connect(token);
  }

  @override
  Stream<bool> connectionStates() {
    return _remoteDataSource.connectionStates();
  }

  @override
  Future<void> disconnect() {
    return _remoteDataSource.disconnect();
  }

  @override
  Stream<DispatchRealtimeEvent> rideMessages() {
    return _remoteDataSource.rideMessages();
  }

  @override
  void sendRideAction(RideMessageDto message) {
    _remoteDataSource.sendRideAction(message);
  }
}
