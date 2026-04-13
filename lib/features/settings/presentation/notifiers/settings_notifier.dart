import 'package:driver_app/features/settings/domain/entities/settings.dart';
import 'package:driver_app/features/settings/presentation/providers/settings_dependencies.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsNotifier extends AsyncNotifier<Settings> {
  @override
  Future<Settings> build() {
    return ref.read(getSettingsUseCaseProvider)();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = AsyncData(await ref.read(getSettingsUseCaseProvider)());
  }

  Future<void> updateDarkMode(bool isDarkMode) async {
    await _update((current) => current.copyWith(isDarkMode: isDarkMode));
  }

  Future<void> updateDefaultStation(int stationId) async {
    await _update((current) => current.copyWith(defaultStationId: stationId));
  }

  Future<void> _update(Settings Function(Settings current) computeNext) async {
    final previous = state.valueOrNull ?? const Settings.initial();
    final next = computeNext(previous);

    state = AsyncData(next);

    try {
      final saved = await ref.read(updateSettingsUseCaseProvider)(next);
      state = AsyncData(saved);
    } catch (error, stack) {
      state = AsyncData(previous);
      Error.throwWithStackTrace(error, stack);
    }
  }
}
