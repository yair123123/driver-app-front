// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
  name: json['name'] as String,
  frequency: (json['frequency'] as num).toDouble(),
  neighborhoods:
      (json['neighborhoods'] as List<dynamic>)
          .map((e) => Neighborhood.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'frequency': instance.frequency,
      'neighborhoods': instance.neighborhoods,
    };
