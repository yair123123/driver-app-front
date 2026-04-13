import 'package:flutter/material.dart';
import 'package:driver_app/theme/app_colors.dart';
import 'package:driver_app/theme/app_durations.dart';
import 'package:driver_app/theme/app_spacing.dart';

class CustomToggle extends StatelessWidget {
  const CustomToggle({
    super.key,
    required this.value,
    this.width = AppWidths.customToggle,
    this.height = AppHeights.customToggle,
  });

  final bool value;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final thumbSize = height - 4;

    return AnimatedContainer(
      duration: AppDurations.fast,
      curve: Curves.easeOut,
      width: width,
      height: height,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(height / 2),
        color: value ? AppColors.primary : AppColors.grey,
      ),
      child: AnimatedAlign(
        duration: AppDurations.fast,
        curve: Curves.easeOut,
        alignment: value ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          width: thumbSize,
          height: thumbSize,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(thumbSize / 2),
            boxShadow: const [
              BoxShadow(
                blurRadius: 4,
                offset: Offset(0, 1),
                color: Colors.black26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
