import 'package:driver_app/features/dispatcher/presentation/states/logic_screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogicScreenNotifier extends StateNotifier<LogicScreenState> {
  LogicScreenNotifier() : super(LogicScreenState.initial());

  void setCurrentStep(FormStep step) {
    if (state.currentStep == step) return;
    state = state.copyWith(currentStep: step);
  }

  void reset() {
    state = LogicScreenState.initial();
  }
}