import 'package:collection/collection.dart';
import 'package:news_app/core/error/failure.dart';
import 'package:news_app/features/topics/domain/entities/subtopic.dart';

class NotificationsSettingsState {
  final Failure? error;
  final bool isLoading;

  final List<SubTopic> notifications;
  final Set<String> selected;
  final Set<String> initialSelected;

  const NotificationsSettingsState({
    this.error,
    this.isLoading = false,
    this.notifications = const [],
    this.selected = const {},
    this.initialSelected = const {},
  });

  factory NotificationsSettingsState.initial() =>
      const NotificationsSettingsState();

  NotificationsSettingsState copyWith({
    Failure? error,
    bool? isLoading,
    List<SubTopic>? notifications,
    Set<String>? selected,
    Set<String>? initialSelected,
    bool cleanError = false,
  }) {
    return NotificationsSettingsState(
      error: cleanError ? null : (error ?? this.error),
      isLoading: isLoading ?? this.isLoading,
      notifications: notifications ?? this.notifications,
      selected: selected ?? this.selected,
      initialSelected: initialSelected ?? this.initialSelected,
    );
  }

  bool get hasChanges =>
      !const SetEquality<String>().equals(selected, initialSelected);

  bool get canSave => hasChanges && !isLoading;
}
