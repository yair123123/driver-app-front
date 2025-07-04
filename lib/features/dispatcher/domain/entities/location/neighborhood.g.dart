// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'neighborhood.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NeighborhoodImpl _$$NeighborhoodImplFromJson(Map<String, dynamic> json) =>
    _$NeighborhoodImpl(
      name: json['name'] as String,
      frequency: (json['frequency'] as num).toDouble(),
      streets:
          (json['streets'] as List<dynamic>)
              .map((e) => Street.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$NeighborhoodImplToJson(_$NeighborhoodImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'frequency': instance.frequency,
      'streets': instance.streets,
    };
