import 'package:driver_app/core/enums/websocket_typecode.dart';
import 'package:driver_app/core/websocket/websocket_dto.dart';
import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:driver_app/features/rides/domain/entities/ride_message_dto.dart';

class WebsocketDatasource {
    WebSocketService webSocketService;
  WebsocketDatasource(this.webSocketService);
    void sendRideAction(RideMessageDto ride) {
    webSocketService.send(
      WebSocketDto(content: ride, typeCode: WebSocketTypeCode.rides, error: ""),
    );
  }

  Stream<RideMessageDto> getRidesEvents() {
    return webSocketService.webSocketDtoStream
        .where((event) => event.typeCode == WebSocketTypeCode.rides)
        .map((event) => RideMessageDto.fromJson(event.content));
  }
}