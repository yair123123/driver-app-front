import 'package:news_app/core/error/failure.dart';
import 'package:news_app/features/lang_and_area/domain/area_entity.dart';

class AreaSettingsState {
  final Failure? error;
  final bool isLoading;

  final List<Area> allAreas;
  final List<Area> areasSelected;
  final Area? currentArea;
  final Area? initialArea;

  const AreaSettingsState({
    this.error,
    this.isLoading = false,
    this.allAreas = const [],
    this.areasSelected = const [],
    this.currentArea,
    this.initialArea,
  });

  factory AreaSettingsState.initial() => const AreaSettingsState();

  AreaSettingsState copyWith({
    List<Area>? areasSelected,
    Failure? error,
    bool? isLoading,
    List<Area>? allAreas,
    Area? currentArea,
    Area? initialArea,
    bool cleanError = false,
  }) {
    return AreaSettingsState(
      error: cleanError ? null : (error ?? this.error),
      isLoading: isLoading ?? this.isLoading,
      allAreas: allAreas ?? this.allAreas,
      areasSelected: areasSelected ?? this.areasSelected,
      currentArea: currentArea ?? this.currentArea,
      initialArea: initialArea ?? this.initialArea,
    );
  }

  bool get hasChanges => initialArea != null && currentArea != initialArea;
  bool get canSave => hasChanges && !isLoading;
}
