import 'package:driver_app/core/env/env.dart';
import 'package:driver_app/core/providers/auth_provider.dart'; // ודא שזה המיקום הנכון של authProvider
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'websocket_service.dart';

final webSocketServiceProvider = Provider<WebSocketService>((ref) {
  final token = ref.watch(authProvider).token; 

  final service = WebSocketService(); 
  
  if (token != null) {
    service.connect(Env.websocketUrl, token);
  } else {
    print('WebSocketService: Token is null, cannot connect.');
  }

  ref.onDispose(() {
    service.dispose();
  });
  
  return service;
});