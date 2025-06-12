import 'package:driver_app/core/providers/user_provider.dart';
import 'package:driver_app/core/websocket/websocket_provider.dart';
import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:driver_app/features/main/domein/use_cases/get_user.dart';
import 'package:driver_app/features/main/presentation/states/appState.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppNotifier extends Notifier<AppState> {
 late final GetUser _getUser;
 late final WebSocketService  _webSocket;

@override
AppState build(){
  _getUser = ref.read(getUserProvider);
  _webSocket = ref.read(webSocketServiceInstanceProvider);
  return AppState.initial();
}

Future<void> init(String token) async {
    try {
      final user = await _getUser(token);

      await _webSocket.connect(token); 

      state = state.CopyWith(user, true); 
    } catch (e) {
      state = state.CopyWith(null, false);
    }
  }
}