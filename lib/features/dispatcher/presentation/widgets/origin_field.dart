// === שלב מוצא ===
import 'package:driver_app/features/dispatcher/presentation/states/logic_screen_state.dart';
import 'package:driver_app/features/dispatcher/presentation/widgets/ride_details_field.dart';
import 'package:flutter/material.dart';

class FieldsOrgDest extends StatelessWidget {
  final Map<FormStep, TextEditingController> controllers;
  final Map<FormStep, FocusNode> focusNodes;
  final bool isInternal;
  final FormStep currentFocusedStep;
  final ValueChanged<FormStep> onFocusChange;
  final VoidCallback nextField;
  const FieldsOrgDest({
    required this.nextField,
    required this.controllers,
    required this.focusNodes,
    required this.isInternal,
    required this.currentFocusedStep,
    required this.onFocusChange,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("מוצא", style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 10),
                  _rideField(FormStep.originCity, context),
                  _rideField(FormStep.originNeighborhood, context),
                  _rideField(FormStep.originStreet, context),
                  const SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),


        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("יעד", style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 10),
              if (!isInternal) _rideField(FormStep.destinationCity, context),
              _rideField(FormStep.destinationNeighborhood, context),
              _rideField(FormStep.destinationStreet, context),
              const SizedBox(height: 10),
            ],
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
        onSubmitted:nextField,

      ),
    );
  }
}
