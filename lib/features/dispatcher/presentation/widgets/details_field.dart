import 'package:driver_app/features/dispatcher/presentation/states/logic_screen_state.dart';
import 'package:driver_app/features/dispatcher/presentation/widgets/ride_details_field.dart';
import 'package:flutter/material.dart';


class DetailsFields extends StatelessWidget {
  final Map<FormStep, TextEditingController> controllers;
  final Map<FormStep, FocusNode> focusNodes;
  final VoidCallback onBack;
  final FormStep currentFocusedStep;
  final ValueChanged<FormStep> onFocusChange;

  const DetailsFields({
    required this.controllers,
    required this.focusNodes,
    required this.onBack,
    required this.currentFocusedStep,
    required this.onFocusChange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        _rideField(FormStep.price, context),
        _rideField(FormStep.phone, context),
        _rideField(FormStep.comment, context),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: ElevatedButton.icon(
            onPressed: onBack,
            icon: const Icon(Icons.arrow_back_ios_new),
            label: const Text("חזור"),
          ),
        ),
      ],
    );
  }

  Widget _rideField(FormStep step, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: OptimizedRideDetailsField(
        controller: controllers[step]!,
        step: step,
        focusNode: focusNodes[step]!,
        onFocusChange: (hasFocus) {
          if (hasFocus) onFocusChange(step);
        },
        onSubmitted: () {
          final steps = [FormStep.price, FormStep.phone, FormStep.comment];
          final currentIndex = steps.indexOf(step);
          if (currentIndex < steps.length - 1) {
            final nextStep = steps[currentIndex + 1];
            focusNodes[nextStep]?.requestFocus();
          } else {
            FocusScope.of(context).unfocus();
          }
        },
      ),
    );
  }
}
