import 'package:driver_app/features/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_user.freezed.dart';
part 'response_user.g.dart';
@freezed
class ResponseUser with _$ResponseUser {
  const factory ResponseUser({
    User? content,
    required bool success,
    required String error,

  }) = _ResponseUser;

  factory ResponseUser.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserFromJson(json);
}

