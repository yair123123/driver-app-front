import 'dart:async';
import 'dart:convert';
import 'package:driver_app/core/env/env.dart';
import 'package:driver_app/core/websocket/websocket_dto.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketService {
  WebSocketChannel? _channel;
  late final StreamController<dynamic> _controller;
  bool _isConnected = false;
  WebSocketService() {
    _controller = StreamController.broadcast();
  }

  bool get isConnected => _isConnected;

  Future<bool> connect(String token) async {

    if (_isConnected) return true;
    final url = Env.websocketUrl;
    try {
      _channel = WebSocketChannel.connect(Uri.parse("$url/?auth=$token"));
      _isConnected = true;

      _channel!.stream.listen(
        (rawMessage) {
          _controller.add(rawMessage);
        },
        onError: (e) {
          _controller.addError(e);
          _isConnected = false;
          return false;
        },
        onDone: () {
          _isConnected = false;
          _controller.add('disconnected');
        },
        cancelOnError: true,
      );
      return true;
    } catch (e) {
      print("websocket connection failed $e");
      _isConnected = false;
  throw Exception("WebSocket לא נתמך מ־Flutter Web ל־localhost");
    }
  }

  void dispose() {
    disconnect();
    _controller.close();
  }

  Stream<WebSocketDto> get webSocketDto {
    return _controller.stream
        .map((rawMessage) {
          try {
            final map =
                rawMessage is String ? jsonDecode(rawMessage) : rawMessage;
            return webSocketDtoFromJson(map);
          } catch (e) {
            print(e);
            return null;
          }
        })
        .where((d) => d != null)
        .cast<WebSocketDto>();
  }

  String send(WebSocketDto message) {
    try {
      _channel!.sink.add(message);
      return "";
    } catch (e) {
      return e.toString();
    }
  }

  void disconnect() {
    if (_channel != null) {
      _channel?.sink.close();
      _channel = null;
    }
  }
}
