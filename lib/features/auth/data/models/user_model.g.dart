// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      gender: json['gender'] as String,
      rating: (json['rating'] as num).toDouble(),
      canReceiveRidesForNonPayment:
          json['canReceiveRidesForNonPayment'] as bool,
      isDispatcher: json['isDispatcher'] as bool,
      dispatcherStationsId: (json['dispatcherStationsId'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const <int>[],
      driverStationsId: (json['driverStationsId'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const <int>[],
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'gender': instance.gender,
      'rating': instance.rating,
      'canReceiveRidesForNonPayment': instance.canReceiveRidesForNonPayment,
      'isDispatcher': instance.isDispatcher,
      'dispatcherStationsId': instance.dispatcherStationsId,
      'driverStationsId': instance.driverStationsId,
    };
