import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/core/error/failure.dart';
import 'package:news_app/core/logger/firebase_logger.dart';
import 'package:news_app/core/services/connection_service.dart';
import 'package:news_app/features/app/presentation/providers/app_prefs_provider.dart';
import 'package:news_app/features/auth/presentation/riverpod/providers/di_providers.dart';
import 'package:news_app/features/lang_and_area/domain/lang_entity.dart';
import 'package:news_app/features/lang_and_area/presentation/lang_area_provider.dart';
import 'package:news_app/features/settings/presentation/states/lang_settings_state.dart';
import 'package:web_socket_channel/status.dart';

class LangSettingsNotifier extends AutoDisposeAsyncNotifier<LangSettingsState> {
  @override
  Future<LangSettingsState> build() async {
    try {
      final app = ref.watch(appProvider);
      final langs = await ref.watch(langsProvider.future);
      final lang = langs.firstWhere((e) => e.code == app.appPrefs.selectedLangCode);
      return LangSettingsState(
        langs: langs,
        currentLang: lang,
        initialLang: lang,
      );
    } catch (e, st) {
      FirebaseLogger.e("failed to load langs", error: e, stack: st);
      throw e is Failure ? e : UnknownFailure();
    }
  }

  void selectLang(Lang lang) {
    final value = state.valueOrNull;
    if (value == null || value.currentLang == lang) return;

    state = AsyncData(value.copyWith(currentLang: lang));
  }
  Future<bool> save() async {
    final value = state.valueOrNull;
    if (value == null || value.canotSave || value.currentLang == null) {
      return false;
    }
    final internetConnection = await ref.read(networkStatusProvider.future);
    if (!internetConnection) {
      return false;
    }

    final userNotifier = ref.read(userProvider.notifier);
    final appNotifier = ref.read(appProvider.notifier);

state = AsyncLoading();
    try {
      await userNotifier.upsertUser((u) {
        return u!.copyWith(langCode: value.currentLang!.code);
      });

      appNotifier.setSelectedLang(value.currentLang!.code);

      final updated = state.valueOrNull ?? value;

      state = AsyncData(
        updated.copyWith(isLoading: false, initialLang: updated.currentLang),
      );
      return true;
    } catch (e, st) {
      FirebaseLogger.e("failed to save lang", error: e, stack: st);

      final current = state.valueOrNull ?? value;

      state = AsyncData(
        current.copyWith(isLoading: false, error: UnknownFailure()),
      );
      return false;
    }
  }
}

final langSettingsProvider =
  AsyncNotifierProvider.autoDispose<LangSettingsNotifier, LangSettingsState>(
    LangSettingsNotifier.new,
  );