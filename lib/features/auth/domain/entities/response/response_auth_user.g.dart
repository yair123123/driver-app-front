// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_auth_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseAuthUserImpl _$$ResponseAuthUserImplFromJson(
  Map<String, dynamic> json,
) => _$ResponseAuthUserImpl(
  content:
      json['content'] == null
          ? null
          : AuthUser.fromJson(json['content'] as Map<String, dynamic>),
  success: json['success'] as bool,
  error: json['error'] as String,
);

Map<String, dynamic> _$$ResponseAuthUserImplToJson(
  _$ResponseAuthUserImpl instance,
) => <String, dynamic>{
  'content': instance.content,
  'success': instance.success,
  'error': instance.error,
};
