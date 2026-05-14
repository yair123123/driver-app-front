enum RealtimeConnectionStatus {
  disconnected,
  connecting,
  connected,
  reconnecting,
  error,
}

class RealtimeConnectionState {
  const RealtimeConnectionState({required this.status, this.message});

  const RealtimeConnectionState.disconnected()
    : this(status: RealtimeConnectionStatus.disconnected);

  const RealtimeConnectionState.connecting()
    : this(status: RealtimeConnectionStatus.connecting);

  const RealtimeConnectionState.connected()
    : this(status: RealtimeConnectionStatus.connected);

  const RealtimeConnectionState.reconnecting()
    : this(status: RealtimeConnectionStatus.reconnecting);

  const RealtimeConnectionState.error(String message)
    : this(status: RealtimeConnectionStatus.error, message: message);

  final RealtimeConnectionStatus status;
  final String? message;

  bool get isDisconnected => status == RealtimeConnectionStatus.disconnected;
  bool get isConnecting => status == RealtimeConnectionStatus.connecting;
  bool get isConnected => status == RealtimeConnectionStatus.connected;
  bool get isReconnecting => status == RealtimeConnectionStatus.reconnecting;
  bool get hasError => status == RealtimeConnectionStatus.error;
}
