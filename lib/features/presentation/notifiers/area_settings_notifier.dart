import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/core/error/failure.dart';
import 'package:news_app/core/logger/firebase_logger.dart';
import 'package:news_app/features/app/presentation/providers/app_prefs_provider.dart';
import 'package:news_app/features/auth/domain/entities/area_prefs.dart';
import 'package:news_app/features/auth/presentation/riverpod/providers/di_providers.dart';
import 'package:news_app/features/home/presentation/riverpod/providers/available_areas_provider.dart';
import 'package:news_app/features/lang_and_area/domain/area_entity.dart';
import 'package:news_app/features/lang_and_area/presentation/lang_area_provider.dart';
import 'package:news_app/features/settings/presentation/states/area_settings_state.dart';
import 'package:news_app/features/topics/presentation/providers/topics_provider.dart';

class AreaSettingsNotifier extends AsyncNotifier<AreaSettingsState> {
  @override
  Future<AreaSettingsState> build() async {
    final allAreas = await ref
        .watch(areasProvider.future)
        .then((areas) => areas.where((area) => area.supported).toList());

    final areaCodesSelected = await ref.watch(availableAreasProvider.future);

    final currentAreaCode = ref.watch(
      appProvider.select((appState) => appState.appPrefs.selectedAreaCode),
    );
    final currentArea = allAreas.firstWhere(
      (area) => area.code == currentAreaCode,
    );
    return AreaSettingsState(
      allAreas: allAreas,
      areasSelected: areaCodesSelected,
      currentArea: currentArea,
    );
  }

  Future<bool> addArea(Area area) async {
    try {
      final current = state.valueOrNull;
      if (current == null) return false;

      final exists = current.areasSelected.any((a) => a.code == area.code);
      if (exists) return true;

      final after = [...current.areasSelected, area];
      await _save(after);
      return true;
    } catch (e, s) {
      FirebaseLogger.e("failed to add area", error: e, stack: s);
      return false;
    }
  }

  Future<bool> addMultipleDifficultyArea(Set<Area> areas) async {
    try {
      final current = state.valueOrNull;
      if (current == null) return false;

      final after = [...current.areasSelected];

      for (final area in areas) {
        final exists = current.areasSelected.any((a) => a.code == area.code);
        if (!exists) {
          after.add(area);
        }
      }

      await _save(after);
      return true;
    } catch (e, s) {
      FirebaseLogger.e("failed to add multiple areas", error: e, stack: s);
      return false;
    }
  }

  Future<bool> removeArea(Area area) async {
    try {
      final current = state.valueOrNull;
      if (current == null) return false;

      final after = current.areasSelected
          .where((a) => a.code != area.code)
          .toList();

      await _save(after);
      return true;
    } catch (e, s) {
      FirebaseLogger.e("failed to remove area", error: e, stack: s);
      return false;
    }
  }

  // TODO: remove after fix
  Future<void> addAllAreas() async {
    try {
      final current = state.valueOrNull;
      if (current == null) return;

      final after = current.allAreas;

      await _save(after);
    } catch (e, s) {
      FirebaseLogger.e("failed to add all areas", error: e, stack: s);
    }
  }

  Future<void> _save(List<Area> areas) async {
    final topics = await ref.read(topicsProvider.future);
    final def = topics.defaultSelectedSubtopicIds.toList();
    final areaCodes = areas.map((e) => e.code).toList();
    final userNotifier = ref.read(userProvider.notifier);
    await userNotifier.upsertUser((u) {
      return u!.copyWith(areaCodes: areaCodes);
    });
    for (final area in areas) {
      await userNotifier.updatePrefs((current) {
        if (current == null) {
          return AreaPrefs.create(def);
        }
        return current.copyWith(selectedTopicValues: def);
      }, area.code);
    }
  }
}

final areaSettingsProvider =
    AsyncNotifierProvider<AreaSettingsNotifier, AreaSettingsState>(
      AreaSettingsNotifier.new,
    );
