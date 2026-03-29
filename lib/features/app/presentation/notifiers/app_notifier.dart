import 'dart:async';

import 'package:driver_app/core/app/app_state.dart';
import 'package:driver_app/core/services/device_info_service.dart';
import 'package:driver_app/features/app/domain/entities/app_prefs.dart';
import 'package:driver_app/features/app/domain/entities/app_runtime.dart';
import 'package:riverpod/riverpod.dart';

class AppStateNotifier extends Notifier<AppState> {
  @override
  AppState build() {
    final deviceInfo = ref.read(deviceInfoProvider);
    final appPrefs = AppPrefs(
    );

    final appRuntime = AppRuntime();
    return AppState(appPrefs: appPrefs, appRuntime: appRuntime);
  }

  void loadFromCache(AppPrefs appPrefs) {
    state = state.copyWith(appPrefs: appPrefs);
  }

  void setIsAuth(bool isAuth) {
    state = state.copyWith(
      appRuntime: state.appRuntime.copyWith(isAuth: isAuth),
    );
  }

  void setForceUpdate(bool forceUpdate) {
    state = state.copyWith(
      appRuntime: state.appRuntime.copyWith(forceUpdate: forceUpdate),
    );
  }

  void setLastReadMessageByGroup(
    String groupId,
    String lastReadMessageByGroup,
  ) {
    final lastReadMessageByGroupMap = Map<String, String>.from(
      state.appPrefs.lastReadMessageByGroup,
    );
    lastReadMessageByGroupMap[groupId] = lastReadMessageByGroup;
    final nextPrefs = state.appPrefs.copyWith(
      lastReadMessageByGroup: lastReadMessageByGroupMap,
    );

    _setPrefs(nextPrefs);
  }

  void setNotificationAuth(NotificationAuth status) {
    state = state.copyWith(
      appRuntime: state.appRuntime.copyWith(notificationAuth: status),
    );
  }

  void setAppBusy(AppBusy appBusy) {
    state = state.copyWith(
      appRuntime: state.appRuntime.copyWith(appBusy: appBusy),
    );
  }

  void setArticlesLoaded(bool loaded) {
    state = state.copyWith(
      appRuntime: state.appRuntime.copyWith(articlesLoaded: loaded),
    );
  }

  void setSelectedLang(String langCode) {
    final nextPrefs = state.appPrefs.copyWith(selectedLangCode: langCode);
    _setPrefs(nextPrefs);
  }

  void setWereMessageNewGroupsPresented(bool wereMessageNewGroupsPresented) {
    final nextPrefs = state.appPrefs.copyWith(
      wereMessageNewGroupsPresented: wereMessageNewGroupsPresented,
    );
    _setPrefs(nextPrefs);
  }

  void setGroupPageIsActive(bool value) {
    final nextPrefs = state.appPrefs.copyWith(isOnGroupsPage: value);
    _setPrefs(nextPrefs);
  }

  void setSelectedArea(String areaCode) {
    final nextPrefs = state.appPrefs.copyWith(selectedAreaCode: areaCode);
    _setPrefs(nextPrefs);
  }

  void setLastReadArticleId(String? articleId, List<String> filteredTopics) {
    final updatedMap = Map<String, String>.from(state.appPrefs.lastReadByTopic);

    if (articleId != null) {
      for (final topic in filteredTopics) {
        updatedMap[topic] = articleId;
      }
    }

    final nextPrefs = state.appPrefs.copyWith(
      lastReadByTopic: updatedMap,
      recentFilteredTopic: filteredTopics,
    );

    _setPrefs(nextPrefs);
  }

  void _setPrefs(AppPrefs nextPrefs) {
    state = state.copyWith(appPrefs: nextPrefs);
    unawaited(_persist(nextPrefs));
  }

  Future<void> _persist(AppPrefs newState) async {
    try {
      final save = ref.read(saveLocalAppStateUseCaseProvider);
      await save(newState);
    } catch (error, stack) {
      FirebaseLogger.e('Save AppState failed', error: error, stack: stack);
    }
  }
}
