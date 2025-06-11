import 'package:driver_app/features/dispatcher/presentation/providers/dispatch_provider.dart';
import 'package:driver_app/features/dispatcher/presentation/states/logic_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogicScreenNotifier extends StateNotifier<LogicScreenState> {
  final Ref ref;
  LogicScreenNotifier(this.ref)
    : super(LogicScreenState.initial(ref.watch(initialScreenProvider).value!));
void onPressTemplate(TextEditingController controller, String template) {
  final text = controller.text;
  final lines = text.split('\n');
  final lineIndex = FormStep.values.indexOf(state.step);
  lines[lineIndex] = template + '\n'; 
  final newText = lines.join('\n');
  controller.text = newText;
  
  int cursorOffset = 0;
  for (int i = 0; i <= lineIndex; i++) {
    cursorOffset += lines[i].length;
    if (i < lineIndex) cursorOffset += 1;
  }
  
  controller.selection = TextSelection.fromPosition(
    TextPosition(offset: cursorOffset),
  );
}

  void onChange(TextEditingController controller) {
    final text = controller.text;
    
    final currentPosition = controller.selection.baseOffset == -1 ? text.length : controller.selection.baseOffset;
    final lines = text.substring(0, currentPosition).split("\n");

    final currentLine = (lines.length - 1).clamp(0, 6);
    final Map<FormStep, String> updateSelectedValues =
        Map<FormStep, String>.from(state.selectedValue);
    for (var i = 0; i < currentLine; i++) {
      updateSelectedValues[FormStep.values[i]] = lines[i];
    }
    state = state.copyWith(
      selectedValue: updateSelectedValues,
      step: state.getStepByLine(currentLine),
    );
    state = state.copyWith(template: state.getTemplates());
  }
}
