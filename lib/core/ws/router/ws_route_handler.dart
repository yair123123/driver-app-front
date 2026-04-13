import 'package:driver_app/core/ws/protocol/ws_envelope.dart';

abstract class WsRouteHandler {
  bool canHandle(WsEnvelope envelope);

  void handle(WsEnvelope envelope);
}

