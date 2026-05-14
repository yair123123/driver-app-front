// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketErrorDtoImpl _$$SocketErrorDtoImplFromJson(Map<String, dynamic> json) =>
    _$SocketErrorDtoImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      details: json['details'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$SocketErrorDtoImplToJson(
  _$SocketErrorDtoImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'details': instance.details,
};
