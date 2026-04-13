import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final webSocketServiceInstanceProvider = Provider<WebSocketService>((ref) {
  final service = WebSocketService(ref);
  ref.onDispose(service.dispose);
  return service;
});

