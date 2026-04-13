import 'package:driver_app/features/dispatcher/presentation/notifiers/form_dispatch_notifier.dart';
import 'package:driver_app/features/dispatcher/presentation/states/logic_screen_state.dart';
import 'package:driver_app/features/dispatcher/presentation/widgets/ride_details_field.dart';
import 'package:driver_app/features/dispatcher/presentation/widgets/submit_button.dart';
import 'package:flutter/material.dart';

class SmartForm extends StatefulWidget {
  final bool isInternal;
  final bool isSubmitting;
  final Future<void> Function(FormControllersPayload payload) onSubmit;

  const SmartForm({
    super.key,
    required this.isInternal,
    required this.isSubmitting,
    required this.onSubmit,
  });

  @override
  State<SmartForm> createState() => _SmartFormState();
}

class _SmartFormState extends State<SmartForm> {
  final _formKey = GlobalKey<FormState>();
  final _originCityController = TextEditingController();
  final _originNeighborhoodController = TextEditingController();
  final _originStreetController = TextEditingController();
  final _destinationCityController = TextEditingController();
  final _destinationNeighborhoodController = TextEditingController();
  final _destinationStreetController = TextEditingController();
  final _priceController = TextEditingController();
  final _phoneController = TextEditingController();
  final _commentController = TextEditingController();
  final _focusNodes = {for (final step in FormStep.values) step: FocusNode()};

  @override
  void dispose() {
    _originCityController.dispose();
    _originNeighborhoodController.dispose();
    _originStreetController.dispose();
    _destinationCityController.dispose();
    _destinationNeighborhoodController.dispose();
    _destinationStreetController.dispose();
    _priceController.dispose();
    _phoneController.dispose();
    _commentController.dispose();
    for (final node in _focusNodes.values) {
      node.dispose();
    }
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    await widget.onSubmit(
      FormControllersPayload(
        originCity: _originCityController.text,
        originNeighborhood: _originNeighborhoodController.text,
        originStreet: _originStreetController.text,
        destinationCity: _destinationCityController.text,
        destinationNeighborhood: _destinationNeighborhoodController.text,
        destinationStreet: _destinationStreetController.text,
        price: _priceController.text,
        phone: _phoneController.text,
        comment: _commentController.text,
      ),
    );
  }

  bool get _isValidEnough {
    if (widget.isInternal) {
      return _originCityController.text.trim().isNotEmpty &&
          _phoneController.text.trim().isNotEmpty;
    }
    return _originCityController.text.trim().isNotEmpty &&
        _destinationCityController.text.trim().isNotEmpty &&
        _phoneController.text.trim().isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            OptimizedRideDetailsField(
                              controller: _originCityController,
                              focusNode: _focusNodes[FormStep.originCity]!,
                              step: FormStep.originCity,
                            ),
                            const SizedBox(height: 12),
                            OptimizedRideDetailsField(
                              controller: _originNeighborhoodController,
                              focusNode:
                                  _focusNodes[FormStep.originNeighborhood]!,
                              step: FormStep.originNeighborhood,
                            ),
                            const SizedBox(height: 12),
                            OptimizedRideDetailsField(
                              controller: _originStreetController,
                              focusNode: _focusNodes[FormStep.originStreet]!,
                              step: FormStep.originStreet,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          children: [
                            if (!widget.isInternal) ...[
                              OptimizedRideDetailsField(
                                controller: _destinationCityController,
                                focusNode:
                                    _focusNodes[FormStep.destinationCity]!,
                                step: FormStep.destinationCity,
                              ),
                              const SizedBox(height: 12),
                            ],
                            OptimizedRideDetailsField(
                              controller: _destinationNeighborhoodController,
                              focusNode:
                                  _focusNodes[FormStep
                                      .destinationNeighborhood]!,
                              step: FormStep.destinationNeighborhood,
                            ),
                            const SizedBox(height: 12),
                            OptimizedRideDetailsField(
                              controller: _destinationStreetController,
                              focusNode:
                                  _focusNodes[FormStep.destinationStreet]!,
                              step: FormStep.destinationStreet,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  OptimizedRideDetailsField(
                    controller: _priceController,
                    focusNode: _focusNodes[FormStep.price]!,
                    step: FormStep.price,
                  ),
                  const SizedBox(height: 12),
                  OptimizedRideDetailsField(
                    controller: _phoneController,
                    focusNode: _focusNodes[FormStep.phone]!,
                    step: FormStep.phone,
                  ),
                  const SizedBox(height: 12),
                  OptimizedRideDetailsField(
                    controller: _commentController,
                    focusNode: _focusNodes[FormStep.comment]!,
                    step: FormStep.comment,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SubmitButton(
              enabled: _isValidEnough,
              isSubmitting: widget.isSubmitting,
              onSubmit: _submit,
            ),
          ),
        ],
      ),
    );
  }
}
