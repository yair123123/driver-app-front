import 'package:driver_app/features/realtime/domain/entities/socket_envelope.dart';

class DispatchRealtimeEventDto {
  const DispatchRealtimeEventDto({required this.operationCode, this.content});

  factory DispatchRealtimeEventDto.fromEnvelope(SocketEnvelope envelope) {
    return DispatchRealtimeEventDto(
      operationCode: envelope.operationCode,
      content: envelope.content,
    );
  }

  final int operationCode;
  final Map<String, dynamic>? content;
}
