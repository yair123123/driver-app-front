// import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';
// import 'package:driver_app/features/bootstrap/domain/entities/user/user.dart';
// enum AppInitStatus {
//   idle,
//   loading,
//   success,
//   failure,
// }
// class AppState {
//   final bool authenticated;
//   final bool appReady;
//   final bool isRideActive;
//   final String? token;
//   final User? user;
//   final Settings? settings;
//   final bool webSocketConnected;
//   final AppInitStatus initStatus;

//   AppState({
//     this.authenticated = false,
//     this.appReady = false,
//     this.isRideActive = false,
//     this.token,
//     this.user,
//     this.settings,
//     this.webSocketConnected = false,
//     this.initStatus = AppInitStatus.idle,
//   });

//   AppState copyWith({
//     bool? authenticated,
//     bool? appReady,
//     bool? isRideActive,
//     String? token,
//     User? user,
//     Settings? settings,
//     bool? webSocketConnected,
//     AppInitStatus? initStatus,
//   }) {
//     return AppState(
//       authenticated: authenticated ?? this.authenticated,
//       appReady: appReady ?? this.appReady,
//       isRideActive: isRideActive ?? this.isRideActive,
//       token: token ?? this.token,
//       user: user ?? this.user,
//       settings: settings ?? this.settings,
//       webSocketConnected: webSocketConnected ?? this.webSocketConnected,
//       initStatus: initStatus ?? this.initStatus,
//     );
//   }
// }
