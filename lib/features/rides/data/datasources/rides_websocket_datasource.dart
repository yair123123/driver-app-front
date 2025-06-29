import 'package:driver_app/core/enums/websocket_typecode.dart';
import 'package:driver_app/core/websocket/websocket_dto.dart';
import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:driver_app/features/rides/domain/entities/ride_message_dto.dart';

class RidesWebSocketDatasource {
  final WebSocketService wbSocket;
  RidesWebSocketDatasource(this.wbSocket);
  Stream<RideMessageDto> get rideEvents {
    return wbSocket.webSocketDtoStream
        .map((event) {
          try {
            if (event.typeCode == WebSocketTypeCode.rides) {
              return RideMessageDto.fromJson(event.content);
            }
          } catch (e) {
            print(e);
          }
          return null;
        })
        .where((event) => event != null)
        .cast<RideMessageDto>();
  }

  void sendRideAction(RideMessageDto ride) {
    wbSocket.send(
      WebSocketDto(content: ride, typeCode: WebSocketTypeCode.rides, error: ""),
    );
  }
}
