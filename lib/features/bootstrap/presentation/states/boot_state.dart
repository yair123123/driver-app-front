// features/bootstrap/presentation/states/boot_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
part 'boot_state.freezed.dart';

enum BootStep { socket, settings, user }

@freezed
sealed class BootState with _$BootState {
  const factory BootState.loading()                       = Loading;
  const factory BootState.unauthenticated()               = Unauth;
  const factory BootState.warmingUp(BootStep step)        = WarmingUp;
  const factory BootState.ready()                         = Ready;
  const factory BootState.error(String message)           = Error;
}
