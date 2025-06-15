// lib/core/websocket/websocket_service.dart
import 'dart:async';
import 'dart:convert';
import 'package:driver_app/core/env/env.dart';
import 'package:driver_app/core/websocket/websocket_dto.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:stream_transform/stream_transform.dart';

class WebSocketService {
  WebSocketChannel? _channel;
  StreamSubscription? _subscription;
  final _controller = StreamController<String>.broadcast();
  bool _isConnected = false;

  bool get isConnected => _isConnected;
  Stream<WebSocketDto> get webSocketDtoStream =>
      _controller.stream
          .map((s) => webSocketDtoFromJson(s))
          .handleError((e) {})
          .whereType<WebSocketDto>();

  Future<bool> connect(String token) async {
    if (_isConnected) return true;

    final uri = Uri.parse('${Env.websocketUrl}?auth=$token');
    try {
      _channel = WebSocketChannel.connect(uri);
      _isConnected = true;

      _subscription = _channel!.stream.listen(
        (dynamic data) => _controller.add(data as String),
        onError: _handleError,
        onDone: _handleDone,
        cancelOnError: true,
      );

      return true;
    } catch (e, st) {
      _controller.addError(e, st);
      _isConnected = false;
      return false;
    }
  }

  void send(WebSocketDto data) => _channel?.sink.add(jsonEncode(data));

  void disconnect() {
    _subscription?.cancel();
    _channel?.sink.close();
    _subscription = null;
    _channel = null;
    _isConnected = false;
  }

  void dispose() {
    disconnect();
    _controller.close();
  }

  void _handleError(Object error, StackTrace st) {
    _controller.addError(error, st);
    disconnect();
  }

  void _handleDone() {
    _controller.add('disconnected');
    disconnect();
  }
}
