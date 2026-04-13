import 'package:driver_app/features/dispatcher/presentation/states/logic_screen_state.dart';
import 'package:driver_app/features/dispatcher/presentation/widgets/ride_details_field.dart';
import 'package:flutter/material.dart';

class RideFormFields extends StatelessWidget {
  final Map<FormStep, TextEditingController> controllers;
  final Map<FormStep, FocusNode> focusNodes;
  final bool isInternal;
  final ValueChanged<FormStep> onFocusChange;
  final GlobalKey<FormState> formKey;
  const RideFormFields({
    super.key,
    required this.formKey,
    required this.controllers,
    required this.focusNodes,
    required this.isInternal,
    required this.onFocusChange,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(children: [_org_dest_fields(isInternal), _other_fields()]),key: formKey,);
  }

  Widget _org_dest_fields(bool isInternal) {
    return isInternal
        ? Wrap(
      children: [
        _rideField(FormStep.originCity),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _columnWithFields("מוצא", [
                _rideField(FormStep.originNeighborhood),
                _rideField(FormStep.originStreet),
              ]),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _columnWithFields("יעד", [
                _rideField(FormStep.destinationNeighborhood),
                _rideField(FormStep.destinationStreet),
              ]),
            ),
          ],
        ),
      ],
    )
        : Row(
      children: [
        Expanded(
          child: _columnWithFields("מוצא", [
            _rideField(FormStep.originCity),
            _rideField(FormStep.originNeighborhood),
            _rideField(FormStep.originStreet),
          ]),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _columnWithFields("יעד", [
            _rideField(FormStep.destinationCity),
            _rideField(FormStep.destinationNeighborhood),
            _rideField(FormStep.destinationStreet),
          ]),
        ),
      ],
    );
  }

  Row _other_fields() {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [_rideField(FormStep.price), _rideField(FormStep.phone)],
          ),
        ),
        Expanded(child: Column(children: [_rideField(FormStep.comment)])),
      ],
    );
  }

  Widget _rideField(FormStep step) {
    return OptimizedRideDetailsField(
      controller: controllers[step]!,
      step: step,
      onFocusChange: (hasFocus) {
        if (hasFocus) {
          onFocusChange(step);
        }
      },
      focusNode: focusNodes[step]!,
      onSubmitted: () {
        final currentIndex = FormStep.values.indexOf(step);
        if (currentIndex < FormStep.values.length - 1) {
          final nextStep = FormStep.values[currentIndex + 1];
          focusNodes[nextStep]?.requestFocus();
        } else {
          focusNodes[step]?.unfocus();
        }
      },
    );
  }

  Widget _columnWithFields(String label, List<Widget> fields) {
    return Builder(
      builder:
          (context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              label,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          ...fields.map(
                (field) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: field,
            ),
          ),
        ],
      ),
    );
  }
}
