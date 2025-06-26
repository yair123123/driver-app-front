import 'package:driver_app/features/auth/domain/entities/auth_user.dart';

class AuthState {
  final AuthUser? user;
  final bool authenticated;
  final String? token;

  AuthState({this.user, this.authenticated = false,this.token});
  AuthState copyWith({AuthUser? user, String? token, bool? authenticated,String? errorMessage,bool? isLoading}) {
    return AuthState(
      user: user ?? this.user,
      authenticated: authenticated ?? this.authenticated,
      token: token ?? this.token,
    );
  }
}
