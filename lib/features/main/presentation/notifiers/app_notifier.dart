import 'package:driver_app/core/settings/presentation/notifiers/settings_notifier.dart';
import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:driver_app/features/auth/presentation/providers/auth_state.dart';
import 'package:driver_app/features/main/presentation/providers/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AppReadyStatus { idle, ready, loading, error }

class AppReadyState {
  final AppReadyStatus status;
  final String errorMessage;

  const AppReadyState({required this.status, this.errorMessage = ""});

  AppReadyState copyWith({AppReadyStatus? status, String? errorMessage}) {
    return AppReadyState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

class AppInitNotifier extends StateNotifier<AppReadyState> {
  final SettingsNotifier settingsNotifier;
  final UserNotifier userNotifier;
  final WebSocketService webSocketService;

  AppInitNotifier({
    required this.settingsNotifier,
    required this.userNotifier,
    required this.webSocketService,
  }) : super(
         const AppReadyState(errorMessage: "", status: AppReadyStatus.idle),
       );

  Future<void> init(AuthState authState) async {
    if (state.status != AppReadyStatus.idle ||
        authState.authStatus != AuthStatus.authenticated)
      return;
    state = state.copyWith(status: AppReadyStatus.loading);

    try {
      final user = await userNotifier.fetchUser(authState.token!);
      if (user == null) throw Exception("לא הצלחנו להביא משתמש");

      final bool res = await webSocketService.connect(authState.token!);
      if (!res) throw Exception("לא הצלחנו להתחבר לWEBSOCKET");

      await settingsNotifier.fetchSettings();
      final settings = settingsNotifier.state;
      if (settings == null) {
        throw Exception("הגדרות לא תקינות");
      }

      state = state.copyWith(status: AppReadyStatus.ready);
    } catch (e) {
      state = state.copyWith(
        errorMessage: e.toString(),
        status: AppReadyStatus.error,
      );
    }
  }
}
