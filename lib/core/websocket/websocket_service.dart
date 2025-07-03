// lib/core/websocket/websocket_service.dart
import 'dart:async';
import 'dart:convert';
import 'package:driver_app/core/enums/websocket_typecode.dart';
import 'package:driver_app/core/env/env.dart';
import 'package:driver_app/core/websocket/websocket_dto.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:stream_transform/stream_transform.dart';

class WebSocketService {
  WebSocketChannel? _channel;
  StreamSubscription? _subscription;
  WebSocketService();
  final _controller = StreamController<String>.broadcast();

  Stream<WebSocketDto> get webSocketDtoStream =>
      _controller.stream
          .map((s) {print('RECIVED $s'); return webSocketDtoFromJson(s);})
          .handleError((e) {})
          .whereType<WebSocketDto>();

 Future<bool> connect(String token) async {
  final uri = Uri.parse('${Env.websocketUrl}?auth=$token');
  final completer = Completer<bool>();
  try {
    _channel = WebSocketChannel.connect(uri);

    bool firstMessageReceived = false;

    _subscription = _channel!.stream.listen(
      (dynamic data) {
        final message = data as String;
        print('RECEIVED $message');
        if (!firstMessageReceived) {
          firstMessageReceived = true;
          final dto = webSocketDtoFromJson(message);
          if (dto.typeCode == WebSocketTypeCode.connected) {
            completer.complete(true);
          } else {
            completer.complete(false);
          }
        }
        _controller.add(message);
      },
      onError: (e, st) {
        _handleError(e, st);
        if (!completer.isCompleted) completer.complete(false);
      },
      onDone: () {
        _handleDone();
        if (!completer.isCompleted) completer.complete(false);
      },
      cancelOnError: true,
    );

    return completer.future;
  } catch (e, st) {
    print(e);
    _controller.addError(e, st);
    return false;
  }
}

  void send(WebSocketDto data) { 
    print ('SENDING ${data.toJson()}');
    return _channel?.sink.add(jsonEncode(data));}

  void disconnect() {
    _subscription?.cancel();
    _channel?.sink.close();
    _subscription = null;
    _channel = null;
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
