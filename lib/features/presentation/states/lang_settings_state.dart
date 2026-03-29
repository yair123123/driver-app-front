import 'package:news_app/core/error/failure.dart';
import 'package:news_app/features/lang_and_area/domain/lang_entity.dart';

class LangSettingsState {
  final Failure? error;
  final bool isLoading;

  final List<Lang> langs;
  final Lang? currentLang;
  final Lang? initialLang;

  const LangSettingsState({
    this.error,
    this.isLoading = false,
    this.langs = const [],
    this.currentLang,
    this.initialLang,
  });

  factory LangSettingsState.initial() => const LangSettingsState();

  LangSettingsState copyWith({
    Failure? error,
    bool? isLoading,
    List<Lang>? langs,
    Lang? currentLang,
    Lang? initialLang,
    bool cleanError = false,
  }) {
    return LangSettingsState(
      error: cleanError ? null : (error ?? this.error),
      isLoading: isLoading ?? this.isLoading,
      langs: langs ?? this.langs,
      currentLang: currentLang ?? this.currentLang,
      initialLang: initialLang ?? this.initialLang,
    );
  }

  bool get hasChanges => initialLang != null && currentLang != initialLang;
  bool get canSave => hasChanges && !isLoading;
  bool get canotSave => !hasChanges | isLoading;
}
