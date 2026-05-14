// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_envelope_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketEnvelopeDtoImpl _$$SocketEnvelopeDtoImplFromJson(
  Map<String, dynamic> json,
) => _$SocketEnvelopeDtoImpl(
  typeCode: (json['typeCode'] as num).toInt(),
  operationCode: (json['operationCode'] as num).toInt(),
  content: json['content'] as Map<String, dynamic>?,
  error:
      json['error'] == null
          ? null
          : SocketErrorDto.fromJson(json['error'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$SocketEnvelopeDtoImplToJson(
  _$SocketEnvelopeDtoImpl instance,
) => <String, dynamic>{
  'typeCode': instance.typeCode,
  'operationCode': instance.operationCode,
  'content': instance.content,
  'error': instance.error,
};
