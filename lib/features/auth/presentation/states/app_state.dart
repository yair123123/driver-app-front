import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';
import 'package:driver_app/features/auth/domain/entities/user.dart';

class AppState {
  bool appReady;
  bool authenticated;
  String? token;
  Settings? settings;
  User? user;
  bool isRideActive;
  bool webSocketConnected;
  AppState({
    this.appReady = false,
    this.token,
    this.authenticated = false,
    this.isRideActive = false,
    this.webSocketConnected = false,
    this.user,
    this.settings,
  });

  AppState copyWith(
{    String? token,
  bool? appReady,
    bool? authenticated,
    User? user,
    Settings? settings,
    bool? webSocketConnected,
    bool? isRideActive,}
  ) {
    return AppState(
      appReady: appReady ?? this.appReady,
      token: token ?? this.token,
      authenticated: authenticated ?? this.authenticated,
      settings: settings ?? this.settings,
      user: user ?? this.user,
      webSocketConnected: webSocketConnected ?? this.webSocketConnected,
      isRideActive: isRideActive ?? this.isRideActive,
    );
  }
}
