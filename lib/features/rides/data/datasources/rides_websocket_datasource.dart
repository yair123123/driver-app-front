import 'package:driver_app/core/enums/type_codes.dart';
import 'package:driver_app/core/websocket/websocket_dto.dart';
import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:driver_app/features/rides/domain/entities/ride_dto.dart';

class RidesWebSocketDatasource {
  final WebSocketService wbSocket;
  RidesWebSocketDatasource(this.wbSocket);
  Stream<RideDto> get rideEvents {
    return wbSocket.webSocketDtoStream
        .map((event) {
          try {
            if (event.typeCode == webSocketTypecode.ride) {
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
    wbSocket.send(WebSocketDto(content: ride, typeCode: webSocketTypecodeToInt(webSocketTypecode.ride), error: ""));
  }
}
