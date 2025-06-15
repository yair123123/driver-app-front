// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'websocket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebSocketDtoImpl _$$WebSocketDtoImplFromJson(Map<String, dynamic> json) =>
    _$WebSocketDtoImpl(
      content: json['content'],
      error: json['error'] as String,
      type_code: webSocketTypeCodeFromInt((json['type_code'] as num).toInt()),
    );

Map<String, dynamic> _$$WebSocketDtoImplToJson(_$WebSocketDtoImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'error': instance.error,
      'type_code': webSocketTypeCodeToInt(instance.type_code),
    };
