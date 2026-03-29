import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/core/error/failure.dart';
import 'package:news_app/core/logger/firebase_logger.dart';
import 'package:news_app/core/navigation/dirty_provider.dart';
import 'package:news_app/features/app/presentation/providers/app_prefs_provider.dart';
import 'package:news_app/features/auth/presentation/riverpod/providers/di_providers.dart';
import 'package:news_app/features/settings/presentation/states/topics_settings_state.dart';
import 'package:news_app/features/topics/domain/entities/topic.dart';
import 'package:news_app/features/topics/presentation/providers/topics_provider.dart';

class TopicsSettingsNotifier
    extends AutoDisposeAsyncNotifier<TopicsSettingsState> {
  @override
  Future<TopicsSettingsState> build() async {
    try {
      final areaCode = ref.watch(appProvider.select((app) => app.appPrefs.selectedAreaCode));
      final user = await ref.watch(userProvider.future);
      final topicsState = await ref.watch(topicsProvider.future);

      if (user == null) {
        throw const UnauthorizedFailure();
      }

      if (topicsState.failure != null) {
        throw topicsState.failure!;
      }

      if (topicsState.topics.isEmpty) {
        throw const EmptyTopicsFailure();
      }

      final userTopics = user.areaPrefsByArea[areaCode]?.selectedTopicValues;
      if (userTopics == null) {
        throw const UnauthorizedFailure();
      }
      ref.read(dirtyProvider.notifier).set(false);

      return TopicsSettingsState(
        isLoading: false,
        error: null,
        topics: topicsState.topics,
        selectedTopics: userTopics.toSet(),
        initialSelectedTopics: userTopics.toSet(),
      );
    } catch (e, st) {
      final failure = e is Failure ? e : const UnknownFailure();

      FirebaseLogger.e("failed to load topics", error: failure, stack: st);

      throw failure;
    }
  }

  void onRetry() {
    ref.read(topicsProvider.notifier).reload();
    ref.invalidateSelf();
  }

  void onIconPressed(Topic topic) {
    final current = state.valueOrNull;
    if (current == null) return;
    final selected = {...current.selectedTopics};
    switch (current.selectionStatus(topic)) {
      case SelectionStatus.full:
        for (var child in topic.children) {
          selected.remove(child.value);
        }
      case SelectionStatus.empty:
      case SelectionStatus.partial:
        for (var child in topic.children) {
          selected.add(child.value);
        }
        break;
    }
    final next = current.copyWith(selectedTopics: selected);
    state = AsyncData(next);
    ref.read(dirtyProvider.notifier).set(next.hasChanges);
  }

  void updateTopics(Set<String> topics) {
    final value = state.valueOrNull;
    if (value == null) return;

    final next = value.copyWith(selectedTopics: {...topics});
    state = AsyncData(next);

    ref.read(dirtyProvider.notifier).set(next.hasChanges);
  }

  Future<bool> save() async {
    final value = state.valueOrNull;
    if (value == null || !value.canSave) return false;

    state = AsyncData(value.copyWith(isLoading: true, cleanError: true));

    try {
      await ref.read(userProvider.notifier).updatePrefs((current) {
        return current!.copyWith(selectedTopicValues: value.selectedTopics.toList());
      }, ref.read(appProvider.select((appState) => appState.appPrefs.selectedAreaCode)));

      final updated = state.valueOrNull ?? value;

      state = AsyncData(
        updated.copyWith(
          isLoading: false,
          initialSelectedTopics: {...updated.selectedTopics},
        ),
      );
      ref.read(dirtyProvider.notifier).set(false);
      return true;
    } catch (e, st) {
      FirebaseLogger.e("failed to save topics", error: e, stack: st);

      final current = state.valueOrNull ?? value;

      state = AsyncData(
        current.copyWith(isLoading: false, error: UnknownFailure()),
      );
      return false;
    }
  }
}

final topicsSettingsProvider =
    AsyncNotifierProvider.autoDispose<
      TopicsSettingsNotifier,
      TopicsSettingsState
    >(TopicsSettingsNotifier.new);
