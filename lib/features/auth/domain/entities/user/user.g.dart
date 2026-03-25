// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  id: (json['id'] as num).toInt(),
  login_key: json['login_key'] as String,
  username: json['username'] as String,
  gender: json['gender'] as String,
  rating: (json['rating'] as num).toDouble(),
  payment_status: json['payment_status'] as bool,
  is_dispatcher: json['is_dispatcher'] as bool,
  dispatcher_stations:
      (json['dispatcher_stations'] as List<dynamic>)
          .map((e) => Station.fromJson(e as Map<String, dynamic>))
          .toList(),
  driver_stations:
      (json['driver_stations'] as List<dynamic>)
          .map((e) => Station.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login_key': instance.login_key,
      'username': instance.username,
      'gender': instance.gender,
      'rating': instance.rating,
      'payment_status': instance.payment_status,
      'is_dispatcher': instance.is_dispatcher,
      'dispatcher_stations': instance.dispatcher_stations,
      'driver_stations': instance.driver_stations,
    };
