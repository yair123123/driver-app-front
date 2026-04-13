import 'package:driver_app/features/chat/domain/entites/message.dart';
import 'package:driver_app/features/chat/ws/chat_ws_handler.dart';
import 'package:driver_app/core/ws/transport/socket_connection_manager.dart';

class MessagesWebSocketDatasource {
  MessagesWebSocketDatasource(this._handler, this._manager);

  final ChatWsHandler _handler;
  final SocketConnectionManager _manager;

  Stream<Message> get rideEvents {
    return _handler.events.map((event) => event.message);
  }

  void sendMessage(Message message) {
    _manager.sendJson(message.toJson());
  }
}
