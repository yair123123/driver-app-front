// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RideImpl _$$RideImplFromJson(Map<String, dynamic> json) => _$RideImpl(
  id: json['id'] as String,
  stationId: (json['station_id'] as num).toInt(),
  origin: Location.fromJson(json['origin'] as Map<String, dynamic>),
  destination: Location.fromJson(json['destination'] as Map<String, dynamic>),
  price: _intToString(json['price']),
  passengerPhone: json['passenger_phone'] as String,
  comments: json['comments'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
);

Map<String, dynamic> _$$RideImplToJson(_$RideImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'station_id': instance.stationId,
      'origin': instance.origin,
      'destination': instance.destination,
      'price': instance.price,
      'passenger_phone': instance.passengerPhone,
      'comments': instance.comments,
      'timestamp': instance.timestamp.toIso8601String(),
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      city: json['city'] as String,
      neighborhood: json['neighborhood'] as String,
      street: json['street'] as String?,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
      'neighborhood': instance.neighborhood,
      'street': instance.street,
    };
