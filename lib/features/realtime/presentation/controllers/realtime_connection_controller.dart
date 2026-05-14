import 'dart:async';

import 'package:driver_app/features/realtime/domain/entities/realtime_connection_state.dart';
import 'package:driver_app/features/realtime/domain/entities/socket_outgoing_message.dart';
import 'package:driver_app/features/realtime/presentation/providers/realtime_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RealtimeConnectionController extends Notifier<RealtimeConnectionState> {
  StreamSubscription<RealtimeConnectionState>? _connectionSubscription;

  @override
  RealtimeConnectionState build() {
    final repository = ref.watch(realtimeRepositoryProvider);

    _connectionSubscription?.cancel();
    _connectionSubscription = repository.connectionStates.listen((next) {
      state = next;
    });

    ref.onDispose(() {
      unawaited(_connectionSubscription?.cancel());
      unawaited(repository.disconnect());
    });

    return const RealtimeConnectionState.disconnected();
  }

  Future<bool> connect() async {
    if (state.status == RealtimeConnectionStatus.connected) {
      return true;
    }

    if (state.status == RealtimeConnectionStatus.connecting) {
      return false;
    }

    state = const RealtimeConnectionState.connecting();

    try {
      await ref.read(realtimeRepositoryProvider).connect();

      state = const RealtimeConnectionState.connected();

      return true;
    } catch (error) {
      state = RealtimeConnectionState.error(error.toString());

      return false;
    }
  }
  Future<void> disconnect() async {
    await ref.read(realtimeRepositoryProvider).disconnect();
    state = const RealtimeConnectionState.disconnected();
  }

  Future<void> send(SocketOutgoingMessage message) {
    return ref.read(realtimeRepositoryProvider).send(message);
  }
}
