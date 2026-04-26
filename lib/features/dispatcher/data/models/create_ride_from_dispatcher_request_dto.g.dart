// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ride_from_dispatcher_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateRideFromDispatcherRequestDtoImpl
    _$$CreateRideFromDispatcherRequestDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateRideFromDispatcherRequestDtoImpl(
          customerPhone: json['customerPhone'] as String,
          stationId: (json['stationId'] as num).toInt(),
          originText: json['originText'] as String?,
          destinationText: json['destinationText'] as String?,
          notesText: json['notesText'] as String?,
          originCity: json['originCity'] as String,
          originStreet: json['originStreet'] as String,
          originHouseNumber: json['originHouseNumber'] as String,
          destinationCity: json['destinationCity'] as String,
          destinationStreet: json['destinationStreet'] as String,
          destinationHouseNumber: json['destinationHouseNumber'] as String,
          priceAmount: (json['priceAmount'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$$CreateRideFromDispatcherRequestDtoImplToJson(
        _$CreateRideFromDispatcherRequestDtoImpl instance) =>
    <String, dynamic>{
      'customerPhone': instance.customerPhone,
      'stationId': instance.stationId,
      'originText': instance.originText,
      'destinationText': instance.destinationText,
      'notesText': instance.notesText,
      'originCity': instance.originCity,
      'originStreet': instance.originStreet,
      'originHouseNumber': instance.originHouseNumber,
      'destinationCity': instance.destinationCity,
      'destinationStreet': instance.destinationStreet,
      'destinationHouseNumber': instance.destinationHouseNumber,
      'priceAmount': instance.priceAmount,
    };
