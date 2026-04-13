import 'package:flutter/material.dart';
import 'package:driver_app/core/extensions/context_extention.dart';
import 'package:driver_app/theme/app_colors.dart';
import 'package:driver_app/theme/app_typography.dart';

class CustomErrorDialog {
  static Future<T?> show<T>({
    required BuildContext context,
    String title = 'Error',
    required String content,
    String buttonText = 'Close',
    bool barrierDismissible = false,
    VoidCallback? onPressed,
  }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (_) => _ErrorDialogWidget(
        title: title,
        content: content,
        buttonText: buttonText,
        onPressed: onPressed,
      ),
    );
  }
}

class _ErrorDialogWidget extends StatelessWidget {
  const _ErrorDialogWidget({
    required this.title,
    required this.content,
    required this.buttonText,
    this.onPressed,
  });

  final String title;
  final String content;
  final String buttonText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return _buildDialog(
      context,
      titleRow: _buildTitleRow(),
      contentWidget: _buildContent(context),
      actions: [_buildPrimaryButton(context)],
      
    );
  }

  Widget _buildDialog(
    BuildContext context, {
    required Widget titleRow,
    required Widget contentWidget,
    required List<Widget> actions,
  }) {
    return AlertDialog(
      backgroundColor: _bgColor(),
      
      surfaceTintColor: Colors.transparent,
      shape: _shape(),
      title: titleRow,
      content: contentWidget,
      actions: actions,
      actionsPadding: EdgeInsets.only(bottom: 24, right: 24, left: 24),
      contentPadding: EdgeInsets.only(right: 24, left: 24, top: 6, bottom: 24),
      titlePadding: EdgeInsets.only(right: 24, left: 24, top: 24),
    );
  }

  Widget _buildTitleRow() {
    return Text(
      textAlign: TextAlign.center,
      title,
      style: AppTypography.errorDialogTitle.apply(color:  AppColors.errorButton),
    );
  }

  Widget _buildContent(BuildContext context) {
    return  Text(
        textAlign: TextAlign.center,
        content,
        style: context.textStyles.bodySmall?.apply(color: AppColors.black),
    );
  }

  Widget _buildPrimaryButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed ?? () => Navigator.pop(context),
        style: _primaryButtonStyle(),
        child: Text(
          buttonText,
          style: context.textStyles.bodySmall?.apply(color: AppColors.white),
        ),
      ),
    );
  }

  Color _bgColor() => AppColors.white;
  ShapeBorder _shape() {
    return RoundedRectangleBorder(borderRadius: BorderRadius.circular(24));
  }

  ButtonStyle _primaryButtonStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: AppColors.errorButton,
      foregroundColor: Colors.white,
      padding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }
}
