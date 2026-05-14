import 'dart:async';
import 'dart:convert';

import 'package:driver_app/core/logger/firebase_logger.dart';
import 'package:driver_app/features/realtime/data/dtos/socket_envelope_dto.dart';
import 'package:driver_app/features/realtime/data/dtos/socket_outgoing_message_dto.dart';
import 'package:driver_app/features/realtime/domain/entities/realtime_connection_state.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

typedef RealtimeAccessTokenGetter = String? Function();

abstract class RealtimeRemoteDataSource {
  Stream<SocketEnvelopeDto> get events;
  Stream<RealtimeConnectionState> get connectionStates;

  Future<void> connect();
  Future<void> disconnect();
  Future<void> send(SocketOutgoingMessageDto message);
}

class RealtimeRemoteDataSourceImpl implements RealtimeRemoteDataSource {
  RealtimeRemoteDataSourceImpl({
    required Uri socketUri,
    RealtimeAccessTokenGetter? accessTokenGetter,
    WebSocketChannel Function(Uri uri)? channelFactory,
  }) : _socketUri = socketUri,
       _accessTokenGetter = accessTokenGetter,
       _channelFactory = channelFactory ?? WebSocketChannel.connect;

  final Uri _socketUri;
  final RealtimeAccessTokenGetter? _accessTokenGetter;
  final WebSocketChannel Function(Uri uri) _channelFactory;

  final _eventsController = StreamController<SocketEnvelopeDto>.broadcast();
  final _connectionStateController =
      StreamController<RealtimeConnectionState>.broadcast();

  WebSocketChannel? _channel;
  StreamSubscription<dynamic>? _subscription;
  bool _isConnecting = false;
  bool _isConnected = false;
  bool _isDisposed = false;

  @override
  Stream<SocketEnvelopeDto> get events => _eventsController.stream;

  @override
  Stream<RealtimeConnectionState> get connectionStates =>
      _connectionStateController.stream;

  @override
  Future<void> connect() async {
    if (_isDisposed) {
      throw StateError('Realtime data source is disposed.');
    }

    if (_isConnecting || _isConnected) {
      return;
    }

    _isConnecting = true;
    _connectionStateController.add(const RealtimeConnectionState.connecting());

    try {
      final uri = _socketUriWithAuth();
      final channel = _channelFactory(uri);
      _channel = channel;
      await channel.ready;
      _isConnected = true;
      _connectionStateController.add(const RealtimeConnectionState.connected());

      _subscription = channel.stream.listen(
        _handleIncomingMessage,
        onError: _handleSocketError,
        onDone: _handleSocketDone,
        cancelOnError: false,
      );
    } catch (error, stackTrace) {
      _channel = null;
      _isConnected = false;
      _connectionStateController.add(
        RealtimeConnectionState.error(error.toString()),
      );
      FirebaseLogger.e(
        'Realtime socket connect failed',
        error: error,
        stack: stackTrace,
      );
      rethrow;
    } finally {
      _isConnecting = false;
    }
  }

  @override
  Future<void> disconnect() async {
    _isConnecting = false;
    _isConnected = false;

    await _subscription?.cancel();
    _subscription = null;

    await _channel?.sink.close();
    _channel = null;

    if (!_isDisposed) {
      _connectionStateController.add(
        const RealtimeConnectionState.disconnected(),
      );
    }
  }

  @override
  Future<void> send(SocketOutgoingMessageDto message) async {
    final channel = _channel;
    if (!_isConnected || channel == null) {
      throw StateError('Realtime socket is not connected.');
    }

    channel.sink.add(jsonEncode(message.toJson()));
  }

  Future<void> dispose() async {
    _isDisposed = true;
    await _subscription?.cancel();
    _subscription = null;
    await _channel?.sink.close();
    _channel = null;
    await _eventsController.close();
    await _connectionStateController.close();
  }

  Uri _socketUriWithAuth() {
    final token = _accessTokenGetter?.call()?.trim();
    if (token == null || token.isEmpty) {
      // TODO(realtime): Align WebSocket auth transport with the backend
      // contract once it is finalized.
      return _socketUri;
    }

    return _socketUri.replace(
      queryParameters: {..._socketUri.queryParameters, 'auth': token},
    );
  }

  void _handleIncomingMessage(dynamic data) {
    try {
      final rawMessage = switch (data) {
        String value => value,
        List<int> value => utf8.decode(value),
        _ =>
          throw FormatException(
            'Unsupported realtime socket message type: ${data.runtimeType}.',
          ),
      };
      final decoded = jsonDecode(rawMessage);
      if (decoded is! Map<String, dynamic>) {
        throw const FormatException(
          'Realtime socket message is not an object.',
        );
      }

      _eventsController.add(SocketEnvelopeDto.fromJson(decoded));
    } catch (error, stackTrace) {
      final state = RealtimeConnectionState.error(
        'Failed to decode realtime socket message.',
      );
      _connectionStateController.add(state);
      FirebaseLogger.e(
        'Realtime socket decode failed',
        error: error,
        stack: stackTrace,
      );
    }
  }

  void _handleSocketError(Object error, StackTrace stackTrace) {
    _isConnected = false;
    _channel = null;
    _connectionStateController.add(
      RealtimeConnectionState.error(error.toString()),
    );
    FirebaseLogger.e('Realtime socket error', error: error, stack: stackTrace);
  }

  void _handleSocketDone() {
    _isConnected = false;
    _channel = null;
    _connectionStateController.add(
      const RealtimeConnectionState.disconnected(),
    );
    // TODO(realtime): Add bounded reconnect once app lifecycle/auth rules are set.
  }
}
