import 'package:driver_app/features/realtime/data/dtos/socket_envelope_dto.dart';
import 'package:driver_app/features/realtime/data/dtos/socket_error_dto.dart';
import 'package:driver_app/features/realtime/data/dtos/socket_outgoing_message_dto.dart';
import 'package:driver_app/features/realtime/domain/entities/socket_envelope.dart';
import 'package:driver_app/features/realtime/domain/entities/socket_error.dart';
import 'package:driver_app/features/realtime/domain/entities/socket_outgoing_message.dart';

extension SocketEnvelopeDtoMapper on SocketEnvelopeDto {
  SocketEnvelope toEntity() {
    return SocketEnvelope(
      typeCode: typeCode,
      operationCode: operationCode,
      content: content,
      error: error?.toEntity(),
    );
  }
}

extension SocketErrorDtoMapper on SocketErrorDto {
  SocketError toEntity() {
    return SocketError(code: code, message: message, details: details);
  }
}

extension SocketOutgoingMessageMapper on SocketOutgoingMessage {
  SocketOutgoingMessageDto toDto() {
    return SocketOutgoingMessageDto(
      typeCode: typeCode,
      operationCode: operationCode,
      content: content,
    );
  }
}
