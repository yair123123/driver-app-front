import 'dart:async';

import 'package:driver_app/core/ws/enums/ws_topic.dart';
import 'package:driver_app/core/ws/protocol/ws_envelope.dart';
import 'package:driver_app/core/ws/router/ws_route_handler.dart';
import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_event.dart';

class RideWsHandler implements WsRouteHandler {
  RideWsHandler() : _controller = StreamController<DispatchRealtimeEvent>.broadcast();

  final StreamController<DispatchRealtimeEvent> _controller;

  Stream<DispatchRealtimeEvent> get events => _controller.stream;

  @override
  bool canHandle(WsEnvelope envelope) {
    return envelope.topic == WsTopic.rides;
  }

  @override
  void handle(WsEnvelope envelope) {
    final event = DispatchRealtimeEvent.fromEnvelope(envelope);
    _controller.add(event);
  }

  Future<void> dispose() async {
    await _controller.close();
  }
}

