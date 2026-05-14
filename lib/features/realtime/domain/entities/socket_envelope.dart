import 'package:driver_app/features/realtime/domain/entities/socket_error.dart';

class SocketEnvelope {
  const SocketEnvelope({
    required this.typeCode,
    required this.operationCode,
    this.content,
    this.error,
  });

  final int typeCode;
  final int operationCode;
  final Map<String, dynamic>? content;
  final SocketError? error;

  bool get hasError => error != null;
}
