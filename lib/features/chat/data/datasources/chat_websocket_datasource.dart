import 'package:driver_app/core/enums/type_codes.dart';
import 'package:driver_app/core/websocket/websocket_dto.dart';
import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:driver_app/features/chat/domain/entites/message.dart';

class MessagesWebSocketDatasource {
  final WebSocketService wbSocket;
  MessagesWebSocketDatasource(this.wbSocket);
  Stream<Message> get rideEvents {
    return wbSocket.webSocketDtoStream
        .map((event) {
          try {
            if (event.typeCode == webSocketTypecode.chat) {
              return event.content;
            }
          } catch (_) {}
          return null;
        })
        .where((event) => event != null)
        .cast<Message>();
  }

  void sendMessage(Message message) {
    wbSocket.send(WebSocketDto(content: message, typeCode: 30));
  }
}
