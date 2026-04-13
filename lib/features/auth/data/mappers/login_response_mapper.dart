import 'package:driver_app/features/auth/data/models/login_response.dart';
import 'package:driver_app/features/auth/domain/entities/auth_session.dart';

extension LoginResponseMapper on LoginResponse {
  AuthSession toEntity() {
    return AuthSession(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expiresAt: expiresIn != null
          ? DateTime.now().add(Duration(seconds: expiresIn!))
          : null,
    );
  }
}