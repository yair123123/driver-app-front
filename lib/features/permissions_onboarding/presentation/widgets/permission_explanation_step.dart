import 'package:driver_app/theme/app_colors.dart';
import 'package:driver_app/theme/app_radius.dart';
import 'package:driver_app/theme/app_spacing.dart';
import 'package:driver_app/core/widget/common_ui/custom_button.dart';
import 'package:flutter/material.dart';

class PermissionExplanationStep extends StatelessWidget {
  const PermissionExplanationStep({
    super.key,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onPressed,
    this.icon,
    this.isLoading = false,
    this.message,
  });

  final String title;
  final String description;
  final String buttonText;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isLoading;
  final String? message;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.xl,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (icon != null) ...[
            Center(
              child: Container(
                width: 76,
                height: 76,
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.12),
                  borderRadius: AppRadius.xxl.asBorderRadius,
                ),
                child: Icon(icon, size: 38, color: AppColors.primary),
              ),
            ),
            const SizedBox(height: AppSpacing.lg),
          ],
          Text(
            title,
            textAlign: TextAlign.center,
            style: textTheme.headlineMedium?.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSpacing.ml),
          Text(
            description,
            textAlign: TextAlign.center,
            style: textTheme.bodyMedium?.copyWith(
              color: AppColors.white.withValues(alpha: 0.82),
              height: 1.5,
            ),
          ),
          if (message != null) ...[
            const SizedBox(height: AppSpacing.lg),
            Text(
              message!,
              textAlign: TextAlign.center,
              style: textTheme.bodySmall?.copyWith(
                color: AppColors.primaryLight,
                height: 1.35,
              ),
            ),
          ],
          const SizedBox(height: AppSpacing.xl),
          CustomButton(
            text: buttonText,
            onPress: isLoading ? null : onPressed,
            inProgress: isLoading,
            width: double.infinity,
            height: AppHeights.largeButton,
          ),
        ],
      ),
    );
  }
}
