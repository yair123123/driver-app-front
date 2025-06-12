import 'package:driver_app/core/enums/websocket_typecode.dart';
import 'package:driver_app/core/websocket/websocket_dto.dart';
import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:driver_app/features/rides/domain/entities/ride_dto.dart';

class RidesWebSocketDatasource {
  final WebSocketService wbSocket;
  RidesWebSocketDatasource(this.wbSocket);
  Stream<RideDto> get rideEvents {
    return wbSocket.webSocketDto
        .map((event) {
          try {
            if (event.type_code == WebSocketTypeCode.rides) {
              return event;
            }
          } catch (e) {
            print(e);
          }
          return null;
        })
        .where((event) => event != null)
        .cast<RideDto>();
  }

  void sendRideAction(RideDto ride) {
    wbSocket.send(WebSocketDto(content: ride, type_code: WebSocketTypeCode.rides, error: ""));
  }
}
