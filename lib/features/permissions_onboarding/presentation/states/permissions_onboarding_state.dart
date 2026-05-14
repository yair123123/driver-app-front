enum PermissionsOnboardingStep {
  intro,
  notifications,
  locationWhenInUse,
  backgroundLocationExplanation,
  completed,
}

class PermissionsOnboardingState {
  final PermissionsOnboardingStep currentStep;
  final bool isLoading;
  final bool notificationCompleted;
  final bool locationWhenInUseCompleted;
  final bool completed;
  final String? errorMessage;

  const PermissionsOnboardingState({
    required this.currentStep,
    this.isLoading = false,
    this.notificationCompleted = false,
    this.locationWhenInUseCompleted = false,
    this.completed = false,
    this.errorMessage,
  });

  const PermissionsOnboardingState.initial()
    : currentStep = PermissionsOnboardingStep.intro,
      isLoading = false,
      notificationCompleted = false,
      locationWhenInUseCompleted = false,
      completed = false,
      errorMessage = null;

  PermissionsOnboardingState copyWith({
    PermissionsOnboardingStep? currentStep,
    bool? isLoading,
    bool? notificationCompleted,
    bool? locationWhenInUseCompleted,
    bool? completed,
    String? errorMessage,
    bool clearError = false,
  }) {
    return PermissionsOnboardingState(
      currentStep: currentStep ?? this.currentStep,
      isLoading: isLoading ?? this.isLoading,
      notificationCompleted:
          notificationCompleted ?? this.notificationCompleted,
      locationWhenInUseCompleted:
          locationWhenInUseCompleted ?? this.locationWhenInUseCompleted,
      completed: completed ?? this.completed,
      errorMessage: clearError ? null : errorMessage ?? this.errorMessage,
    );
  }
}
