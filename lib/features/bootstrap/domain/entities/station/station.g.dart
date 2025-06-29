// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StationImpl _$$StationImplFromJson(Map<String, dynamic> json) =>
    _$StationImpl(
      station_id: (json['station_id'] as num).toInt(),
      station_name: json['station_name'] as String,
      driver_status_name: json['driver_status_name'] as String? ?? "",
      rides:
          (json['rides'] as List<dynamic>?)
              ?.map((e) => Ride.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$StationImplToJson(_$StationImpl instance) =>
    <String, dynamic>{
      'station_id': instance.station_id,
      'station_name': instance.station_name,
      'driver_status_name': instance.driver_status_name,
      'rides': instance.rides,
    };
