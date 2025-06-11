// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RideDtoImpl _$$RideDtoImplFromJson(Map<String, dynamic> json) =>
    _$RideDtoImpl(
      typeCode: $enumDecode(_$RideTypeCodeEnumMap, json['typeCode']),
      content: json['content'],
      error: json['error'] as String,
    );

Map<String, dynamic> _$$RideDtoImplToJson(_$RideDtoImpl instance) =>
    <String, dynamic>{
      'typeCode': _$RideTypeCodeEnumMap[instance.typeCode]!,
      'content': instance.content,
      'error': instance.error,
    };

const _$RideTypeCodeEnumMap = {
  RideTypeCode.newRide: 'newRide',
  RideTypeCode.cancelRide: 'cancelRide',
  RideTypeCode.updateRide: 'updateRide',
  RideTypeCode.giveRide: 'giveRide',
  RideTypeCode.takenRide: 'takenRide',
  RideTypeCode.pickup: 'pickup',
  RideTypeCode.completeRide: 'completeRide',
};
