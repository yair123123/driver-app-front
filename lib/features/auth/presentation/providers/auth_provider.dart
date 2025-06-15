import 'package:driver_app/features/auth/domain/usecases/clear_token.dart';
import 'package:driver_app/features/auth/domain/usecases/get_saved_token.dart';
import 'package:driver_app/features/auth/domain/usecases/login.dart';
import 'package:driver_app/features/auth/domain/usecases/validate_token.dart';
import 'package:driver_app/features/auth/presentation/providers/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final GetSavedToken getSavedToken;
  final ValidateToken validateToken;
  final ClearToken clearToken;
  final Login loginUseCase;

  AuthNotifier(
    this.getSavedToken,
    this.validateToken,
    this.clearToken,
    this.loginUseCase,
  ) : super(AuthState()) {
    checkSplashStatus();
  }

  Future<void> login(String username, String id) async {
    state = state.copyWith(authStatus: AuthStatus.authenticating);
    try {
      final user = await loginUseCase(username, id);
      state = state.copyWith(
        user: user,
        token: user.jwt_token,
        authStatus: AuthStatus.authenticated,
      );
    } catch (e) {
      state = state.copyWith(authStatus: AuthStatus.unauthenticated);
    }
  }

  Future<bool> checkToken(String token) async {
    bool isValid = await validateToken(token);
    if (isValid) {
      return true;
    }
    await clearToken();
    return false;
  }

  Future<void> checkSplashStatus() async {
    final token = await getSavedToken();
    if (token == null) {
      state = state.copyWith(authStatus: AuthStatus.unauthenticated);
      return;
    }
    try {
      bool isValid = await validateToken(token);
      if (isValid) {
        state = state.copyWith(
          authStatus: AuthStatus.authenticated,
          token: token,
        );
        return;
      }
      
    } catch (e) {
      state = state.copyWith(
        authStatus: AuthStatus.unauthenticated
      );
      return;
    }
  }
}
