import 'package:driver_app/features/dispatch_realtime/domain/repositories/dispatch_socket_repository.dart';
import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_event.dart';
import 'package:driver_app/features/rides/domain/entities/ride_message_dto.dart';

class WebsocketDatasource {
  WebsocketDatasource(this._dispatchSocketRepository);

  final DispatchSocketRepository _dispatchSocketRepository;

  void sendRideAction(RideMessageDto ride) {
    _dispatchSocketRepository.sendRideAction(ride);
  }

  Stream<DispatchRealtimeEvent> getRidesEvents() {
    return _dispatchSocketRepository.rideMessages();
  }
}
