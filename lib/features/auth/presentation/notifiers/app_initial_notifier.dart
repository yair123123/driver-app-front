import 'package:driver_app/core/settings/presentation/notifiers/settings_notifier.dart';
import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:driver_app/features/auth/domain/usecases/clear_token.dart';
import 'package:driver_app/features/auth/domain/usecases/get_saved_token.dart';
import 'package:driver_app/features/auth/domain/usecases/login.dart';
import 'package:driver_app/features/auth/domain/usecases/validate_token.dart';
import 'package:driver_app/features/auth/presentation/providers/user_provider.dart';
import 'package:driver_app/features/auth/presentation/states/app_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppInitialNotifier extends StateNotifier<AppState> {
  final GetSavedToken getSavedToken;
  final ValidateToken validateToken;
  final ClearToken clearToken;
  final Login loginUseCase;
  final SettingsNotifier settingsNotifier;
  final UserNotifier userNotifier;
  final WebSocketService webSocketService;

  AppInitialNotifier(
    this.getSavedToken,
    this.validateToken,
    this.clearToken,
    this.loginUseCase,
    this.settingsNotifier,
    this.userNotifier,
    this.webSocketService,
  ) : super(AppState());
  Future<bool> tryLoginWithToken() async {
    final token = await getSavedToken();
    if (token == null) {
      state = state.copyWith(authenticated: false);
      return false;
    }
    try {
      bool isValid = await validateToken(token);
      if (isValid) {
        state = state.copyWith(authenticated: true, token: token);
        return true;
      }
    } catch (e) {
      state = state.copyWith(authenticated: false);
      print('validate token is failed $e');
      return false;
    }
    return false;
  }

  Future<bool> loginWithCredentials(String username, String id) async {
    try {
      final user = await loginUseCase(username, id);
      state = state.copyWith(token: user.jwt_token, authenticated: true);
      return true;
    } catch (e) {
      state = state.copyWith(authenticated: false);
      print('Login Failed: $e');
      return false;
    }
  }

  Future<bool> initialApp() async {
    if (state.appReady) return true;
    try {
      final user = await userNotifier.fetchUser(state.token!);
      if (user == null) {print("לא הצלחנו להביא משתמש");return false;}

      final bool res = await webSocketConnected();
      if (!res) return false;

      await settingsNotifier.fetchSettings();
      final settings = settingsNotifier.state;
      if (settings == null) {

        print("הגדרות לא תקינות");
        return false;
      }

      state = state.copyWith(appReady: true,
        user: user,
        settings: settings,
        webSocketConnected: true,
      );
      return true;
    } catch (e) {
      print(e);
      state = state.copyWith(
        appReady: false,
      );
    }
  }
  Future<bool> webSocketConnected() async {
    if (state.webSocketConnected) return true;
    final res = await webSocketService.connect(state.token!);
    if (!res) print("לא הצלחנו להתחבר לWEBSOCKET");
    state = state.copyWith(webSocketConnected: res);
    return res;
  }
  Future<bool> fetchSettings() async {
    if (state.settings != null) return true;
    final res = await settingsNotifier.getSettings();
    if (res == null) print("הגדרות לא תקינות");
    state = state.copyWith(settings: res);

    return res;
  }
}
