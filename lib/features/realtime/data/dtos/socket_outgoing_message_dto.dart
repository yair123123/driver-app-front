import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_outgoing_message_dto.freezed.dart';
part 'socket_outgoing_message_dto.g.dart';

@freezed
class SocketOutgoingMessageDto with _$SocketOutgoingMessageDto {
  const factory SocketOutgoingMessageDto({
    required int typeCode,
    required int operationCode,
    Map<String, dynamic>? content,
  }) = _SocketOutgoingMessageDto;

  factory SocketOutgoingMessageDto.fromJson(Map<String, dynamic> json) =>
      _$SocketOutgoingMessageDtoFromJson(json);
}
