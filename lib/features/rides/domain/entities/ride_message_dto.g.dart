// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RideMessageDtoImpl _$$RideMessageDtoImplFromJson(Map<String, dynamic> json) =>
    _$RideMessageDtoImpl(
      operationCode: rideOperationCodeFromInt(
        (json['operation_code'] as num).toInt(),
      ),
      content: json['content'],
      error: json['error'] as String,
    );

Map<String, dynamic> _$$RideMessageDtoImplToJson(
  _$RideMessageDtoImpl instance,
) => <String, dynamic>{
  'operation_code': rideOperationCodeToInt(instance.operationCode),
  'content': instance.content,
  'error': instance.error,
};
