import 'package:driver_app/features/bootstrap/domain/entities/credentials/auth_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_auth_user.freezed.dart';
part 'response_auth_user.g.dart';

@freezed
class ResponseAuthUser with _$ResponseAuthUser {
  const factory ResponseAuthUser({
    AuthUser? content,
    required bool success,
    required String error,
  }) = _ResponseAuthUser;

  factory ResponseAuthUser.fromJson(Map<String, dynamic> json) =>
      _$ResponseAuthUserFromJson(json);
}
