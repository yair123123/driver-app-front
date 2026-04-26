import 'dart:async';
import 'dart:convert';

import 'package:driver_app/core/ws/enums/ws_connection_state.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class SocketConnectionManager {
  SocketConnectionManager({this.maxReconnectAttempts = 3});

  final int maxReconnectAttempts;

  WebSocketChannel? _channel;
  StreamSubscription? _subscription;
  final _rawMessagesController = StreamController<String>.broadcast();
  final _connectionStateController =
      StreamController<SocketConnectionState>.broadcast();
  String? _lastToken;
  bool _manualDisconnect = false;
  bool _connecting = false;

  Stream<String> get rawMessages => _rawMessagesController.stream;

  Stream<SocketConnectionState> get connectionStates =>
      _connectionStateController.stream;

  bool get isConnected => _channel != null;

  Future<bool> connect(String token) async {
    if (_connecting) {
      return false;
    }

    _lastToken = token;
    _manualDisconnect = false;
    _connecting = true;
    _connectionStateController.add(SocketConnectionState.connecting);

    try {
      final uri = Uri.parse('websocketUrl}?auth=$token');
      _channel = WebSocketChannel.connect(uri);

      final completer = Completer<bool>();
      var firstMessageReceived = false;

      _subscription = _channel!.stream.listen(
        (dynamic data) {
          final message = data as String;
          if (!firstMessageReceived) {
            firstMessageReceived = true;
            completer.complete(true);
            _connectionStateController.add(SocketConnectionState.connected);
          }
          _rawMessagesController.add(message);
        },
        onError: (error, stackTrace) {
          _rawMessagesController.addError(error, stackTrace);
          _handleSocketClosure(reconnect: true);
          if (!completer.isCompleted) {
            completer.complete(false);
          }
        },
        onDone: () {
          _handleSocketClosure(reconnect: true);
          if (!completer.isCompleted) {
            completer.complete(false);
          }
        },
        cancelOnError: true,
      );

      final connected = await completer.future;
      _connecting = false;
      return connected;
    } catch (error, stackTrace) {
      _connecting = false;
      _rawMessagesController.addError(error, stackTrace);
      _handleSocketClosure(reconnect: false);
      return false;
    }
  }

  Future<bool> reconnect() async {
    if (_lastToken == null || _lastToken!.isEmpty) {
      return false;
    }

    for (var attempt = 0; attempt < maxReconnectAttempts; attempt++) {
      if (_manualDisconnect) {
        return false;
      }

      final delay = Duration(milliseconds: 250 * (attempt + 1) * (attempt + 1));
      if (attempt > 0) {
        _connectionStateController.add(SocketConnectionState.reconnecting);
        await Future.delayed(delay);
      }

      final connected = await connect(_lastToken!);
      if (connected) {
        return true;
      }
    }

    return false;
  }

  void sendJson(Map<String, dynamic> message) {
    _channel?.sink.add(jsonEncode(message));
  }

  void sendRaw(String message) {
    _channel?.sink.add(message);
  }

  Future<void> disconnect() async {
    _manualDisconnect = true;
    await _subscription?.cancel();
    await _channel?.sink.close();
    _subscription = null;
    _channel = null;
    _connecting = false;
    _connectionStateController.add(SocketConnectionState.disconnected);
  }

  Future<void> dispose() async {
    await disconnect();
    await _rawMessagesController.close();
    await _connectionStateController.close();
  }

  void _handleSocketClosure({required bool reconnect}) {
    _subscription?.cancel();
    _subscription = null;
    _channel = null;
    _connecting = false;

    if (_manualDisconnect || !reconnect) {
      _connectionStateController.add(SocketConnectionState.disconnected);
      return;
    }

    _connectionStateController.add(SocketConnectionState.disconnected);
    unawaited(this.reconnect());
  }
}

