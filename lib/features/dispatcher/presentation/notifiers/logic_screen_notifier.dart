import 'package:driver_app/features/dispatcher/presentation/providers/dispatch_provider.dart';
import 'package:driver_app/features/dispatcher/presentation/states/form_line_state.dart';
import 'package:driver_app/features/dispatcher/presentation/states/logic_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogicScreenNotifier extends StateNotifier<LogicScreenState> {
  final Ref ref;

  LogicScreenNotifier(this.ref)
    : super(LogicScreenState.initial(ref.watch(formDispatchNotifierProvider).value!));
  void resetLogic(){
    state = LogicScreenState.initial(ref.watch(formDispatchNotifierProvider).value!);
  }
  void onPressTemplate(String template, TextEditingController controller) {
    final index = state.lines.indexWhere(
      (line) => line.step == state.currentStep,
    );

    final updatedLine = state.lines[index].copyWith(
      value:
          state.lines[index].step == FormStep.comment
              ? state.lines[index].value + " " + template
              : template,
    );

    final updatedLines = [...state.lines];
    updatedLines[index] = updatedLine;

    controller.text = updatedLines.map((e) => e.value).join('\n');
    controller.selection = TextSelection.fromPosition(
      TextPosition(offset: controller.text.length),
    );

    final nextStep =
        index + 1 < FormStep.values.length
            ? FormStep.values[index + 1]
            : FormStep.comment;

    state = state.copyWith(
      lines: updatedLines,
      currentStep: nextStep,
      template: state.getTemplatesForStep(nextStep),
    );
  }

  void onChange(TextEditingController controller) {
    final text = controller.text;
    final currentPosition =
        controller.selection.baseOffset == -1
            ? text.length
            : controller.selection.baseOffset;

    final inputLines = text.split('\n');

    final updatedLines = <FormLine>[];
    for (int i = 0; i < inputLines.length; i++) {
      final step =
          i < FormStep.values.length ? FormStep.values[i] : FormStep.comment;
      ;
      updatedLines.add(FormLine(value: inputLines[i], step: step));
    }

    final currentLineIndex =
        text.substring(0, currentPosition).split('\n').length - 1;
    final currentStep =
        currentLineIndex < FormStep.values.length
            ? FormStep.values[currentLineIndex]
            : FormStep.comment;

    state = state.copyWith(
      lines: updatedLines,
      currentStep: currentStep,
      template: state.getTemplatesForStep(currentStep),
    );
  }
}
