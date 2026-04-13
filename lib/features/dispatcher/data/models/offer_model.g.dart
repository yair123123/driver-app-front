// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OfferModelImpl _$$OfferModelImplFromJson(Map<String, dynamic> json) =>
    _$OfferModelImpl(
      id: json['id'] as String,
      stationId: (json['stationId'] as num).toInt(),
      origin: AddressModel.fromJson(json['origin'] as Map<String, dynamic>),
      destination:
          AddressModel.fromJson(json['destination'] as Map<String, dynamic>),
      price: json['price'] as String,
      passengerPhone: json['passengerPhone'] as String,
      comments: json['comments'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$OfferModelImplToJson(_$OfferModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stationId': instance.stationId,
      'origin': instance.origin,
      'destination': instance.destination,
      'price': instance.price,
      'passengerPhone': instance.passengerPhone,
      'comments': instance.comments,
      'timestamp': instance.timestamp.toIso8601String(),
    };
