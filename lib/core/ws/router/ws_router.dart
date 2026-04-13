import 'package:driver_app/core/ws/protocol/ws_envelope.dart';
import 'package:driver_app/core/ws/router/ws_route_handler.dart';

class WsRouter {
  WsRouter(this._handlers);

  final List<WsRouteHandler> _handlers;

  void route(WsEnvelope envelope) {
    for (final handler in _handlers) {
      if (!handler.canHandle(envelope)) {
        continue;
      }

      handler.handle(envelope);
      return;
    }
  }
}

