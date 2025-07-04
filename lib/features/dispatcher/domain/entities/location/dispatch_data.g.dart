// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispatch_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DispatchDataImpl _$$DispatchDataImplFromJson(Map<String, dynamic> json) =>
    _$DispatchDataImpl(
      comments:
          (json['comments'] as List<dynamic>).map((e) => e as String).toList(),
      prices: (json['prices'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          k,
          (e as List<dynamic>).map((e) => (e as num).toInt()).toList(),
        ),
      ),
      cities:
          (json['cities'] as List<dynamic>)
              .map((e) => City.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$DispatchDataImplToJson(_$DispatchDataImpl instance) =>
    <String, dynamic>{
      'comments': instance.comments,
      'prices': instance.prices,
      'cities': instance.cities,
    };
