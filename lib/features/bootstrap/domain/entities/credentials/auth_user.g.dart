// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthUserImpl _$$AuthUserImplFromJson(Map<String, dynamic> json) =>
    _$AuthUserImpl(
      loginKey: json['login_key'] as String,
      username: json['username'] as String,
      jwt_token: json['jwt_token'] as String,
    );

Map<String, dynamic> _$$AuthUserImplToJson(_$AuthUserImpl instance) =>
    <String, dynamic>{
      'login_key': instance.loginKey,
      'username': instance.username,
      'jwt_token': instance.jwt_token,
    };
