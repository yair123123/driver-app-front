// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_outgoing_message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketOutgoingMessageDtoImpl _$$SocketOutgoingMessageDtoImplFromJson(
  Map<String, dynamic> json,
) => _$SocketOutgoingMessageDtoImpl(
  typeCode: (json['typeCode'] as num).toInt(),
  operationCode: (json['operationCode'] as num).toInt(),
  content: json['content'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$SocketOutgoingMessageDtoImplToJson(
  _$SocketOutgoingMessageDtoImpl instance,
) => <String, dynamic>{
  'typeCode': instance.typeCode,
  'operationCode': instance.operationCode,
  'content': instance.content,
};
