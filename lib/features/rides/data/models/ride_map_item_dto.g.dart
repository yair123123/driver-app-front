// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_map_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$RideMapItemDtoToJson(RideMapItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$RideStatusDtoEnumMap[instance.status]!,
      'created_at': instance.createdAt.toIso8601String(),
      'price_amount': instance.priceAmount,
      'origin_lat': instance.originLat,
      'origin_lon': instance.originLon,
      'origin_title': instance.originTitle,
      'destination_lat': instance.destinationLat,
      'destination_lon': instance.destinationLon,
      'destination_title': instance.destinationTitle,
      'origin_city': instance.originCity,
      'origin_street': instance.originStreet,
      'origin_house_number': instance.originHouseNumber,
      'destination_city': instance.destinationCity,
      'destination_street': instance.destinationStreet,
      'destination_house_number': instance.destinationHouseNumber,
    };

const _$RideStatusDtoEnumMap = {
  RideStatusDto.open: 'OPEN',
  RideStatusDto.dispatching: 'DISPATCHING',
  RideStatusDto.assigned: 'ASSIGNED',
  RideStatusDto.enRoute: 'EN_ROUTE',
  RideStatusDto.arrived: 'ARRIVED',
  RideStatusDto.inProgress: 'IN_PROGRESS',
  RideStatusDto.completed: 'COMPLETED',
  RideStatusDto.canceled: 'CANCELED',
};

_$RideMapItemDtoImpl _$$RideMapItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$RideMapItemDtoImpl(
      id: (json['id'] as num).toInt(),
      status: $enumDecode(_$RideStatusDtoEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      priceAmount: (json['priceAmount'] as num?)?.toDouble(),
      originLat: (json['originLat'] as num).toDouble(),
      originLon: (json['originLon'] as num).toDouble(),
      originTitle: json['originTitle'] as String?,
      destinationLat: (json['destinationLat'] as num?)?.toDouble(),
      destinationLon: (json['destinationLon'] as num?)?.toDouble(),
      destinationTitle: json['destinationTitle'] as String?,
      originCity: json['originCity'] as String?,
      originStreet: json['originStreet'] as String?,
      originHouseNumber: json['originHouseNumber'] as String?,
      destinationCity: json['destinationCity'] as String?,
      destinationStreet: json['destinationStreet'] as String?,
      destinationHouseNumber: json['destinationHouseNumber'] as String?,
    );

Map<String, dynamic> _$$RideMapItemDtoImplToJson(
  _$RideMapItemDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': _$RideStatusDtoEnumMap[instance.status]!,
  'createdAt': instance.createdAt.toIso8601String(),
  'priceAmount': instance.priceAmount,
  'originLat': instance.originLat,
  'originLon': instance.originLon,
  'originTitle': instance.originTitle,
  'destinationLat': instance.destinationLat,
  'destinationLon': instance.destinationLon,
  'destinationTitle': instance.destinationTitle,
  'originCity': instance.originCity,
  'originStreet': instance.originStreet,
  'originHouseNumber': instance.originHouseNumber,
  'destinationCity': instance.destinationCity,
  'destinationStreet': instance.destinationStreet,
  'destinationHouseNumber': instance.destinationHouseNumber,
};
