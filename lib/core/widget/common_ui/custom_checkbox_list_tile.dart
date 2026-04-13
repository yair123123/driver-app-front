import 'package:flutter/material.dart';
import 'package:driver_app/theme/app_colors.dart';

class CustomCheckboxListTile extends StatelessWidget {
  const CustomCheckboxListTile({
    super.key,
    required this.value,
    required this.title,
    required this.onChanged,
  });

  final bool value;
  final Widget title;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      onChanged: onChanged,
      dense: true,
      visualDensity: VisualDensity.compact,
      contentPadding: EdgeInsets.zero,
      title: title,
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: AppColors.primary,
      checkColor: AppColors.white,
      value: value,
    );
  }
}
