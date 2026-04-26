// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ride_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateRideResponseDtoImpl _$$CreateRideResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateRideResponseDtoImpl(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$CreateRideResponseDtoImplToJson(
        _$CreateRideResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
    };
