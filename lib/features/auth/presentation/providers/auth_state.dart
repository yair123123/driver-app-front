import 'package:driver_app/features/auth/domain/entities/auth_user.dart';
enum AuthStatus { unauthenticated, authenticating, authenticated }
class AuthState {
  final AuthUser? user;
  final String? token;
  final AuthStatus authStatus;

  AuthState({
    this.user,
    this.token,
    this.authStatus = AuthStatus.unauthenticated,
  });
  AuthState copyWith({
    AuthUser? user,
    String? token,
  AuthStatus? authStatus

  }) {
    return AuthState(
      user: user ?? this.user,
      token: token ?? this.token,
      authStatus: authStatus ?? this.authStatus
    );
  }
}

