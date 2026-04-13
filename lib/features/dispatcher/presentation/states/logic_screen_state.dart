enum FormStep {
  originCity,
  originNeighborhood,
  originStreet,
  destinationCity,
  destinationNeighborhood,
  destinationStreet,
  price,
  phone,
  comment,
}

class LogicScreenState {
  final FormStep currentStep;

  const LogicScreenState({required this.currentStep});

  factory LogicScreenState.initial() {
    return const LogicScreenState(currentStep: FormStep.originCity);
  }

  LogicScreenState copyWith({FormStep? currentStep}) {
    return LogicScreenState(currentStep: currentStep ?? this.currentStep);
  }
}