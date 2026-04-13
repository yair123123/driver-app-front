import 'package:driver_app/features/dispatcher/presentation/states/logic_screen_state.dart';
import 'package:flutter/material.dart';
import '../states/logic_screen_state.dart';
import 'get_funcs.dart';

class OptimizedRideDetailsField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final FormStep step;
  final ValueChanged<bool>? onFocusChange;
  final VoidCallback? onSubmitted;

  const OptimizedRideDetailsField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.step,
    this.onFocusChange,
    this.onSubmitted,
  });

  @override
  State<OptimizedRideDetailsField> createState() =>
      _OptimizedRideDetailsFieldState();
}

class _OptimizedRideDetailsFieldState extends State<OptimizedRideDetailsField> {
  late final String label;
  late final String? hintText;
  late final TextInputType keyboardType;
  late final Icon? prefixIcon;
  late final String? helperText;
  late final String? Function(String?)? validator;
  late final List inputFormatters;
  bool readOnly = false;

  @override
  void initState() {
    super.initState();
    label = getLabel(widget.step);
    hintText = getHintText(widget.step);
    keyboardType = getKeyboardType(widget.step);
    prefixIcon = getPrefixIcon(widget.step);
    helperText = getHelperText(widget.step);
    validator = getDefaultValidator(widget.step);
    inputFormatters = getInputFormatters(widget.step);
    widget.focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_onFocusChange);
    super.dispose();
  }

  void _onFocusChange() {
    widget.onFocusChange?.call(widget.focusNode.hasFocus);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      readOnly: readOnly,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        border: const OutlineInputBorder(),
        prefixIcon: prefixIcon,
        helperText: helperText,
      ),
      keyboardType: keyboardType,
      inputFormatters: inputFormatters.cast(),
      validator: validator,
      onFieldSubmitted: (_) => widget.onSubmitted?.call(),
      textInputAction:
          widget.step == FormStep.comment
              ? TextInputAction.newline
              : TextInputAction.next,
      maxLines: widget.step == FormStep.comment ? 3 : 1,
    );
  }
}
