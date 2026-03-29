import 'package:collection/collection.dart';
import 'package:news_app/core/error/failure.dart';
import 'package:news_app/features/topics/domain/entities/topic.dart';

enum SelectionStatus { full, empty, partial }

class TopicsSettingsState {
  final Failure? error;
  final bool isLoading;

  final List<Topic> topics;
  final Set<String> selectedTopics;
  final Set<String> initialSelectedTopics;

  const TopicsSettingsState({
    this.error,
    this.isLoading = false,
    this.topics = const [],
    this.selectedTopics = const {},
    this.initialSelectedTopics = const {},
  });

  SelectionStatus selectionStatus(Topic topic){
    final selectedCount = topic.children
        .where((t) => selectedTopics.contains(t.value))
        .length;
    if (selectedCount == 0) {
      return SelectionStatus.empty;
    } else if (selectedCount == topic.children.length) {
      return SelectionStatus.full;
    } else {
      return SelectionStatus.partial;
    }
  }

  factory TopicsSettingsState.initial() => const TopicsSettingsState();

  TopicsSettingsState copyWith({
    Failure? error,
    bool? isLoading,
    List<Topic>? topics,
    Set<String>? selectedTopics,
    Set<String>? initialSelectedTopics,
    bool cleanError = false,
  }) {
    return TopicsSettingsState(
      error: cleanError ? null : (error ?? this.error),
      isLoading: isLoading ?? this.isLoading,
      topics: topics ?? this.topics,
      selectedTopics: selectedTopics ?? this.selectedTopics,
      initialSelectedTopics:
          initialSelectedTopics ?? this.initialSelectedTopics,
    );
  }

  bool get hasChanges => !const SetEquality<String>().equals(
    selectedTopics,
    initialSelectedTopics,
  );

  bool get canSave => hasChanges && !isLoading;
}
