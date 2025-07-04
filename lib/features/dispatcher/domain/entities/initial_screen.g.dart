// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initial_screen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitialScreenImpl _$$InitialScreenImplFromJson(Map<String, dynamic> json) =>
    _$InitialScreenImpl(
      cities:
          (json['cities'] as List<dynamic>)
              .map((e) => City.fromJson(e as Map<String, dynamic>))
              .toList(),
      prices: (json['prices'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          k,
          (e as List<dynamic>).map((e) => (e as num).toInt()).toList(),
        ),
      ),
      comments:
          (json['comments'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$InitialScreenImplToJson(_$InitialScreenImpl instance) =>
    <String, dynamic>{
      'cities': instance.cities,
      'prices': instance.prices,
      'comments': instance.comments,
    };
