import 'package:driver_app/features/realtime/data/dtos/socket_error_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_envelope_dto.freezed.dart';
part 'socket_envelope_dto.g.dart';

@freezed
class SocketEnvelopeDto with _$SocketEnvelopeDto {
  const factory SocketEnvelopeDto({
    required int typeCode,
    required int operationCode,
    Map<String, dynamic>? content,
    SocketErrorDto? error,
  }) = _SocketEnvelopeDto;

  factory SocketEnvelopeDto.fromJson(Map<String, dynamic> json) =>
      _$SocketEnvelopeDtoFromJson(json);
}
