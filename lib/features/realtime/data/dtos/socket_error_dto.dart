import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_error_dto.freezed.dart';
part 'socket_error_dto.g.dart';

@freezed
class SocketErrorDto with _$SocketErrorDto {
  const factory SocketErrorDto({
    String? code,
    String? message,
    Map<String, dynamic>? details,
  }) = _SocketErrorDto;

  factory SocketErrorDto.fromJson(Map<String, dynamic> json) =>
      _$SocketErrorDtoFromJson(json);
}
