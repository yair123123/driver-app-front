import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static late final String authUrl;
  static late final String websocketUrl;

  static void init() {
    final auth = dotenv.env['API_AUTH_URL'];
    if (auth == null || auth.isEmpty) {
      throw Exception('❌ Missing API_AUTH_URL in .env file');
    }
    print(auth);

    final ws = dotenv.env['WEBSOCKET_RIDE_SERVICE'];
    if (ws == null || ws.isEmpty) {
      throw Exception('❌ Missing WEBSOCKET_RIDE_SERVICE in .env file');
    }
    print(ws);

    authUrl = auth;
    websocketUrl = ws;
  }
}
