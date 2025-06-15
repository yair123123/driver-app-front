// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RideDtoImpl _$$RideDtoImplFromJson(Map<String, dynamic> json) =>
    _$RideDtoImpl(
      operation_code: rideOperationCodeFromInt(
        (json['operation_code'] as num).toInt(),
      ),
      content: json['content'],
      error: json['error'] as String,
    );

Map<String, dynamic> _$$RideDtoImplToJson(_$RideDtoImpl instance) =>
    <String, dynamic>{
      'operation_code': rideOperationCodeToInt(instance.operation_code),
      'content': instance.content,
      'error': instance.error,
    };
