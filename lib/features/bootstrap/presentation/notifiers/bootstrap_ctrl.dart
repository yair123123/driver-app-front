import 'package:driver_app/core/app/app_state_notifier.dart';
import 'package:driver_app/core/settings/domain/entities/settings_entity.dart';
import 'package:driver_app/core/websocket/websocket_provider.dart';
import 'package:driver_app/features/bootstrap/domain/entities/user/user.dart';
import 'package:driver_app/features/bootstrap/presentation/providers/auth_provider.dart';
import 'package:driver_app/features/bootstrap/presentation/providers/settings_provider.dart';
import 'package:driver_app/features/bootstrap/presentation/states/boot_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bootstrap_ctrl.g.dart';
@Riverpod()
class BootstrapCtrl extends _$BootstrapCtrl {

  @override
  Future<BootState> build() async {
    final token = await ref.read(getSavedTokenProvider)();
    if (token == null) return const BootState.unauthenticated();

    state = const AsyncData(BootState.warmingUp(BootStep.socket));
    final socketOk = await ref.read(webSocketServiceInstanceProvider).connect(token);
    if (!socketOk) return const BootState.error('WebSocket failed');

    state = const AsyncData(BootState.warmingUp(BootStep.settings));
    final settingsF = ref.read(getSettingsProvider)();
    state = const AsyncData(BootState.warmingUp(BootStep.user));
    final userF = ref.read(getUserProvider)(token);
    final results = await Future.wait([settingsF, userF]);

    ref.read(appStateNotifierProvider.notifier)
      ..setSettings(results[0] as Settings)
      ..setUser(results[1] as User)
      ..setSocket(true);

    return const BootState.ready();
  }
}
