// app_state_notifier.dart
import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';
import 'package:driver_app/features/bootstrap/domain/entities/ride/ride.dart';
import 'package:driver_app/features/bootstrap/domain/entities/user/user.dart';
import 'app_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'app_state_notifier.g.dart';          

@Riverpod(keepAlive: true)
class AppStateNotifier extends _$AppStateNotifier {
  @override
  AppState build() => AppState.initial();

  void setUser(User u)          => state = state.copyWith(user: u);
  void setSettings(Settings s)  => state = state.copyWith(settings: s);
  void setSocket(bool ok)       => state = state.copyWith(socketConnected: ok);
  void setActiveRide(Ride? r)   => state = state.copyWith(activeRide: r);
}
