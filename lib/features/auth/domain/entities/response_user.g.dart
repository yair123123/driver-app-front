// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseUserImpl _$$ResponseUserImplFromJson(Map<String, dynamic> json) =>
    _$ResponseUserImpl(
      content:
          json['content'] == null
              ? null
              : User.fromJson(json['content'] as Map<String, dynamic>),
      success: json['success'] as bool,
      error: json['error'] as String,
    );

Map<String, dynamic> _$$ResponseUserImplToJson(_$ResponseUserImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'success': instance.success,
      'error': instance.error,
    };
