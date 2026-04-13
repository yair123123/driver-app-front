enum DispatchConnectionStatus {
  disconnected,
  connecting,
  connected,
  disconnecting,
  error,
}

class DispatchConnectionState {
  const DispatchConnectionState({required this.status, this.message});

  const DispatchConnectionState.disconnected()
    : this(status: DispatchConnectionStatus.disconnected);

  const DispatchConnectionState.connecting()
    : this(status: DispatchConnectionStatus.connecting);

  const DispatchConnectionState.connected()
    : this(status: DispatchConnectionStatus.connected);

  const DispatchConnectionState.disconnecting()
    : this(status: DispatchConnectionStatus.disconnecting);

  const DispatchConnectionState.error(String message)
    : this(status: DispatchConnectionStatus.error, message: message);

  final DispatchConnectionStatus status;
  final String? message;

  bool get isDisconnected => status == DispatchConnectionStatus.disconnected;
  bool get isConnecting => status == DispatchConnectionStatus.connecting;
  bool get isConnected => status == DispatchConnectionStatus.connected;
}
