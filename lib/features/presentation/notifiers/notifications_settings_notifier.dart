import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/core/error/failure.dart';
import 'package:news_app/core/logger/firebase_logger.dart';
import 'package:news_app/features/app/presentation/providers/app_prefs_provider.dart';
import 'package:news_app/features/auth/presentation/riverpod/providers/di_providers.dart';
import 'package:news_app/features/settings/presentation/states/notifications_settings_state.dart';
import 'package:news_app/features/topics/presentation/providers/topics_provider.dart';

class NotificationsSettingsNotifier
    extends AsyncNotifier<NotificationsSettingsState> {
  @override
  Future<NotificationsSettingsState> build() async {
    try {
      final user = await ref.read(userProvider.future);
      final topicsState = await ref.watch(topicsProvider.future);

      if (user == null ||
          topicsState.topics.isEmpty ||
          topicsState.failure != null) {
        throw topicsState.failure ?? UnknownFailure();
      }
      final areaCode = ref.watch(
        appProvider.select((appState) => appState.appPrefs.selectedAreaCode),
      );
      final userTopicsValues =
          user.areaPrefsByArea[areaCode]?.selectedTopicValues;

      if (userTopicsValues == null) {
        throw UnauthorizedFailure();
      }
      final subtopics = topicsState.selectedSubtopics(userTopicsValues);

      final userNotifications =
          user.areaPrefsByArea[areaCode]?.notificationChannels;
      if (userNotifications == null) {
        throw UnauthorizedFailure();
      }
      final selectedSet = userNotifications.toSet();
      final sortedSubtopics = [...subtopics]
        ..sort((a, b) {
          final aSelected = selectedSet.contains(a.value);
          final bSelected = selectedSet.contains(b.value);

          if (aSelected == bSelected) {
            return a.label.compareTo(b.label);
          }

          if (!aSelected && bSelected) return -1;
          return 1;
        });

      return NotificationsSettingsState(
        notifications: sortedSubtopics,
        selected: selectedSet,
        initialSelected: selectedSet,
        isLoading: false,
        error: null,
      );
    } catch (e, st) {
      FirebaseLogger.e("failed to load notifications", error: e, stack: st);
      throw UnknownFailure();
    }
  }

  void updateNotification(String itemSelected) {
    final value = state.valueOrNull;
    if (value == null) return;

    final next = <String>{...value.selected};
    final isContains = next.contains(itemSelected);
    isContains ? next.remove(itemSelected) : next.add(itemSelected);
    state = AsyncData(value.copyWith(selected: {...next}));
    save();
  }

  Future<bool> save() async {
    final value = state.valueOrNull;
    if (value == null || !value.canSave) return false;

    state = AsyncData(value.copyWith(isLoading: true, cleanError: true));

    try {
      final selectedArea = ref.read(
        appProvider.select((appState) => appState.appPrefs.selectedAreaCode),
      );
      ref.read(userProvider.notifier).updatePrefs((current) {
        return current!.copyWith(notificationChannels: value.selected.toList());
      }, selectedArea);
      state = AsyncData(value.copyWith(isLoading: false));
      return true;
    } catch (e, st) {
      FirebaseLogger.e("failed to save notifications", error: e, stack: st);

      final current = state.valueOrNull ?? value;

      state = AsyncData(
        current.copyWith(isLoading: false, error: UnknownFailure()),
      );
      return false;
    }
  }
}

final notificationsSettingsProvider =
    AsyncNotifierProvider<
      NotificationsSettingsNotifier,
      NotificationsSettingsState
    >(NotificationsSettingsNotifier.new);
