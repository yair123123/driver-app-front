import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'websocket_service.dart';
final webSocketServiceInstanceProvider = Provider<WebSocketService>((ref) {
  final service = WebSocketService();
  ref.onDispose(service.dispose);
  return service;
});
