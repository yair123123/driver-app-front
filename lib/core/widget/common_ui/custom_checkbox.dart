import 'package:flutter/material.dart';
import 'package:driver_app/theme/app_colors.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      activeColor: AppColors.primary,
      checkColor: AppColors.white,
      onChanged: onChanged,

    );
  }
}
