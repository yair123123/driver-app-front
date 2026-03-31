// features/app_state/domain/app_state.dart
import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';
import 'package:driver_app/features/bootstrap/domain/entities/ride/ride.dart';
import 'package:driver_app/features/bootstrap/domain/entities/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';
@freezed    
class AppState with _$AppState {
  const factory AppState({
    User?     user,
    Settings? settings,
    @Default(false) bool socketConnected,
    Ride?     activeRide,
  }) = _AppState;

  factory AppState.initial() => const AppState();
}
