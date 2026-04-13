import 'dart:async';

import 'package:driver_app/core/ws/enums/ws_topic.dart';
import 'package:driver_app/core/ws/protocol/ws_envelope.dart';
import 'package:driver_app/core/ws/router/ws_route_handler.dart';
import 'package:driver_app/features/chat/domain/entites/message.dart';
import 'package:driver_app/features/chat/ws/chat_socket_events.dart';

class ChatWsHandler implements WsRouteHandler {
  ChatWsHandler() : _controller = StreamController<IncomingChatMessageEvent>.broadcast();

  final StreamController<IncomingChatMessageEvent> _controller;

  Stream<IncomingChatMessageEvent> get events => _controller.stream;

  @override
  bool canHandle(WsEnvelope envelope) {
    return envelope.topic == WsTopic.chat;
  }

  @override
  void handle(WsEnvelope envelope) {
    final message = _parseMessage(envelope.payload);
    if (message == null) {
      return;
    }

    _controller.add(IncomingChatMessageEvent(message: message));
  }

  Future<void> dispose() async {
    await _controller.close();
  }

  Message? _parseMessage(dynamic payload) {
    if (payload is Map<String, dynamic>) {
      return Message.fromJson(payload);
    }
    if (payload is Map) {
      return Message.fromJson(Map<String, dynamic>.from(payload));
    }

    return null;
  }
}

