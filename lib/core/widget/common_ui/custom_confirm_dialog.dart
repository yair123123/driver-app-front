import 'package:flutter/material.dart';
import 'package:driver_app/core/extensions/context_extention.dart';
import 'package:driver_app/l10n/app_localizations.dart';
import 'package:driver_app/theme/app_colors.dart';
import 'package:driver_app/theme/app_spacing.dart';

class   CustomConfirmDialog {
  static Future<bool?> show({
    required BuildContext context,
    required String title,
    required String content,
    String? confirmText,
    String? cancelText,
    bool barrierDismissible = false,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    bool warning = false,
  }) {
    return showDialog<bool>(
      context: context,
      useRootNavigator: true,
      barrierDismissible: barrierDismissible,
      builder: (dialogContext) {
        final l10n = AppLocalizations.of(dialogContext)!;
        return _ConfirmDialogWidget(
          warning: warning,
          title: title,
          content: content,
          confirmText: confirmText ?? l10n.confirm,
          cancelText: cancelText ?? l10n.cancel,
          onConfirm: onConfirm,
          onCancel: onCancel,
        );
      },
    );
  }
}

class _ConfirmDialogWidget extends StatelessWidget {
  const _ConfirmDialogWidget({
    this.warning = false,
    required this.title,
    required this.content,
    required this.confirmText,
    required this.cancelText,
    this.onConfirm,
    this.onCancel,
  });

  final bool warning;
  final String title;
  final String content;
  final String confirmText;
  final String cancelText;
  final VoidCallback? onConfirm;
  final VoidCallback? onCancel;

  Color _primaryColor(BuildContext context) =>
      warning ? context.colorScheme.errorContainer : context.colorScheme.primary;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: _bgColor(),
      surfaceTintColor: Colors.transparent,
      shape: _shape(),
      title: _buildTitleText(context),
      content: _buildContent(context),
      actions: [_buildActionsRow(context)],
      actionsPadding: const EdgeInsets.only(bottom: 24, right: 24, left: 24),
      contentPadding:
          const EdgeInsets.only(right: 24, left: 24, top: 6, bottom: 24),
      titlePadding: const EdgeInsets.only(right: 24, left: 24, top: 24),
      actionsOverflowButtonSpacing: 0,
    );
  }

  Widget _buildTitleText(BuildContext context) {
    final primaryColor = _primaryColor(context);
    return Text(
      title,
      textAlign: TextAlign.center,
      style: context.textStyles.headlineSmall?.apply(color: primaryColor),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Text(
      content,
      textAlign: TextAlign.center,
      style: context.textStyles.bodySmall,
    );
  }

  Widget _buildActionsRow(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _buildConfirmButton(context)),
        const SizedBox(width: AppSpacing.sm),
        Expanded(child: _buildCancelButton(context)),
      ],
    );
  }

  Widget _buildCancelButton(BuildContext context) {
    final primaryColor = _primaryColor(context);

    return OutlinedButton(
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop(false);
        onCancel?.call();
      },
      style: _cancelButtonStyle(primaryColor),
      child: Text(
        cancelText,
        style: context.textStyles.bodySmall?.apply(color: primaryColor),
      ),
    );
  }

  Widget _buildConfirmButton(BuildContext context) {
    final primaryColor = _primaryColor(context);

    return ElevatedButton(
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop(true);
        onConfirm?.call();
      },
      style: _confirmButtonStyle(primaryColor),
      child: Text(
        confirmText,
        style: context.textStyles.bodySmall?.apply(color: AppColors.white),
      ),
    );
  }

  Color _bgColor() => AppColors.white;

  ShapeBorder _shape() =>
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));

  ButtonStyle _confirmButtonStyle(Color primaryColor) {
    return ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      padding: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }

  ButtonStyle _cancelButtonStyle(Color primaryColor) {
    return OutlinedButton.styleFrom(
      side: BorderSide(color: primaryColor),
      padding: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }
}
