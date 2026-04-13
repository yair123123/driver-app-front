import 'dart:async';

import 'package:driver_app/core/ws/protocol/socket_message_parser.dart';
import 'package:driver_app/core/ws/router/ws_router.dart';
import 'package:driver_app/core/ws/router/ws_route_handler.dart';
import 'package:driver_app/core/ws/transport/socket_connection_manager.dart';
import 'package:driver_app/features/chat/ws/chat_ws_handler.dart';
import 'package:driver_app/features/dispatch_realtime/ws/ride_ws_handler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final wsRegistryProvider = Provider<WsRegistry>((ref) {
  final registry = WsRegistry();
  ref.onDispose(registry.dispose);
  return registry;
});

final socketConnectionManagerProvider = Provider<SocketConnectionManager>((ref) {
  return ref.watch(wsRegistryProvider).manager;
});

final socketMessageParserProvider = Provider<SocketMessageParser>((ref) {
  return ref.watch(wsRegistryProvider).parser;
});

final rideWsHandlerProvider = Provider<RideWsHandler>((ref) {
  return ref.watch(wsRegistryProvider).rideHandler;
});

final chatWsHandlerProvider = Provider<ChatWsHandler>((ref) {
  return ref.watch(wsRegistryProvider).chatHandler;
});

final wsRouteHandlersProvider = Provider<List<WsRouteHandler>>((ref) {
  return ref.watch(wsRegistryProvider).handlers;
});

final wsRouterProvider = Provider<WsRouter>((ref) {
  return ref.watch(wsRegistryProvider).router;
});

final wsPipelineProvider = Provider<WsRegistry>((ref) {
  return ref.watch(wsRegistryProvider);
});

class WsRegistry {
  WsRegistry()
      : manager = SocketConnectionManager(),
        parser = SocketMessageParser(),
        rideHandler = RideWsHandler(),
        chatHandler = ChatWsHandler() {
    router = WsRouter([rideHandler, chatHandler]);
    _subscription = manager.rawMessages.listen(
      (rawMessage) {
        final envelope = parser.parseRaw(rawMessage);
        if (envelope == null) {
          return;
        }
        router.route(envelope);
      },
      onError: (_, __) {},
    );
  }

  final SocketConnectionManager manager;
  final SocketMessageParser parser;
  final RideWsHandler rideHandler;
  final ChatWsHandler chatHandler;
  late final WsRouter router;
  late final StreamSubscription<String> _subscription;

  List<WsRouteHandler> get handlers => [rideHandler, chatHandler];

  void dispose() {
    _subscription.cancel();
    manager.dispose();
    rideHandler.dispose();
    chatHandler.dispose();
  }
}
