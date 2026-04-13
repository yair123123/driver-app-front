import 'dart:async';

import 'package:driver_app/features/auth/presentation/notifiers/creds_notifier.dart';
import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_connection_state.dart';
import 'package:driver_app/features/dispatch_realtime/presentation/providers/dispatch_realtime_dependencies.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DispatchConnectionController extends Notifier<DispatchConnectionState> {
  StreamSubscription<bool>? _connectionSubscription;

  @override
  DispatchConnectionState build() {
    _connectionSubscription ??= ref
        .read(dispatchSocketRepositoryProvider)
        .connectionStates()
        .listen(_syncConnectionState);
    ref.onDispose(() => _connectionSubscription?.cancel());

    return const DispatchConnectionState.disconnected();
  }

  Future<bool> connect() async {
    if (state.isConnected) {
      return true;
    }
    if (state.isConnecting) {
      return false;
    }

    final token = ref.read(authSessionProvider)?.accessToken?.trim();
    if (token == null || token.isEmpty) {
      state = const DispatchConnectionState.error(
        'Missing access token for dispatch connection.',
      );
      return false;
    }

    state = const DispatchConnectionState.connecting();
    final didConnect = await ref
        .read(dispatchSocketRepositoryProvider)
        .connect(token);

    state =
        didConnect
            ? const DispatchConnectionState.connected()
            : const DispatchConnectionState.error(
              'Failed to connect dispatch socket.',
            );

    return didConnect;
  }

  Future<void> disconnect() async {
    if (state.isDisconnected) {
      return;
    }

    state = const DispatchConnectionState.disconnecting();
    await ref.read(dispatchSocketRepositoryProvider).disconnect();
    state = const DispatchConnectionState.disconnected();
  }

  void _syncConnectionState(bool isConnected) {
    if (isConnected) {
      state = const DispatchConnectionState.connected();
      return;
    }

    if (!state.isDisconnected) {
      state = const DispatchConnectionState.disconnected();
    }
  }
}
