// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relation_station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RelationStationImpl _$$RelationStationImplFromJson(
  Map<String, dynamic> json,
) => _$RelationStationImpl(
  station: Station.fromJson(json['station'] as Map<String, dynamic>),
  relationType: json['relationType'] as String,
);

Map<String, dynamic> _$$RelationStationImplToJson(
  _$RelationStationImpl instance,
) => <String, dynamic>{
  'station': instance.station,
  'relationType': instance.relationType,
};
