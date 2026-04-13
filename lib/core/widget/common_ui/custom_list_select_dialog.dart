import 'package:flutter/material.dart';
import 'package:driver_app/core/extensions/context_extention.dart';
import 'package:driver_app/l10n/app_localizations.dart';
import 'package:driver_app/theme/app_colors.dart';
import 'package:driver_app/theme/app_radius.dart';
import 'package:driver_app/theme/app_spacing.dart';
import 'package:driver_app/theme/app_typography.dart';

class CustomListSelectDialog {
  static Future<T?> show<T>({
    required String Function(T item) extractId,
    ValueChanged<String>? onItemTap,
    bool popOnItemTap = false,
    required BuildContext context,
    required String title,
    String? subtitle,
    required List<T> items,
    required String Function(T item) itemLabel,
    T? initialValue,
    String? confirmText,
    String? cancelText,
    bool barrierDismissible = true,
    bool disableConfirmUntilSelected = true,
    ValueChanged<T>? onConfirm,
    VoidCallback? onCancel,
  }) {
    return showDialog<T>(
      context: context,
      useRootNavigator: true,
      barrierDismissible: barrierDismissible,
      builder: (dialogContext) {
        final l10n = AppLocalizations.of(dialogContext)!;
        return _ListSelectDialogWidget<T>(
          extractId: extractId,
          onItemTap: onItemTap,
          popOnItemTap: popOnItemTap,
          title: title,
          subtitle: subtitle,
          items: items,
          itemLabel: itemLabel,
          initialValue: initialValue,
          confirmText: confirmText ?? l10n.confirm,
          cancelText: cancelText ?? l10n.cancel,
          disableConfirmUntilSelected: disableConfirmUntilSelected,
          onConfirm: onConfirm,
          onCancel: onCancel,
        );
      },
    );
  }
}

class _ListSelectDialogWidget<T> extends StatefulWidget {
  const _ListSelectDialogWidget({
    this.onItemTap,
    this.popOnItemTap = false,
    required this.extractId,
    required this.title,
    required this.items,
    required this.itemLabel,
    required this.confirmText,
    required this.cancelText,
    required this.disableConfirmUntilSelected,
    this.subtitle,
    this.initialValue,
    this.onConfirm,
    this.onCancel,
  });

  final ValueChanged<String>? onItemTap;
  final bool popOnItemTap;
  final String title;
  final String? subtitle;
  final String Function(T item) extractId;
  final List<T> items;
  final String Function(T item) itemLabel;
  final T? initialValue;

  final String confirmText;
  final String cancelText;
  final bool disableConfirmUntilSelected;

  final ValueChanged<T>? onConfirm;
  final VoidCallback? onCancel;

  @override
  State<_ListSelectDialogWidget<T>> createState() =>
      _ListSelectDialogWidgetState<T>();
}

class _ListSelectDialogWidgetState<T>
    extends State<_ListSelectDialogWidget<T>> {
  T? selected;

  @override
  void initState() {
    super.initState();
    selected = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: AppRadius.m.asBorderRadius),
      title: _buildTitle(context),
      content: _buildContent(context),
      actions: [_buildActionsRow(context)],
      actionsPadding: const EdgeInsets.only(
        bottom: AppSpacing.lg,
        right: AppSpacing.lg,
        left: AppSpacing.lg,
      ),
      contentPadding: const EdgeInsets.only(
        right: AppSpacing.lg,
        left: AppSpacing.lg,
        top: AppSpacing.s,
        bottom: AppSpacing.lg,
      ),
      titlePadding: const EdgeInsets.only(
        right: AppSpacing.lg,
        left: AppSpacing.lg,
        top: AppSpacing.lg,
      ),
      actionsOverflowButtonSpacing: 0,
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.title,
          textAlign: TextAlign.start,
          style: AppTypography.managmentTitle.apply(color: AppColors.black),
        ),
        if (widget.subtitle != null) ...[
          const SizedBox(height: AppSpacing.xs),
          Text(
            widget.subtitle!,
            textAlign: TextAlign.start,
            style: AppTypography.snackBarSubtitle.copyWith(
              color: AppColors.greyDark,
              height: 1.25,
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;
    final dialogW = screenW < 500 ? screenW * 0.85 : 420.0;

    return SizedBox(
      width: dialogW,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.m),
        child: _buildList(context),
      ),
    );
  }

  Widget _buildList(BuildContext context) {
    if (widget.items.isEmpty) {
      return Text(
        '',
        textAlign: TextAlign.center,
        style: context.textStyles.bodySmall,
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.only(bottom: AppSpacing.s),
      itemCount: widget.items.length,
      itemBuilder: (_, index) {
        final item = widget.items[index];
        final isSelected = selected == item;

        return InkWell(
          borderRadius: AppRadius.xs.asBorderRadius,
          onTap: () {
            if (widget.onItemTap != null) {
              if (widget.popOnItemTap) {
                Navigator.of(context, rootNavigator: true).pop();
              }
              widget.onItemTap!(widget.extractId(item));
              return;
            }

            setState(() => selected = item);
          },
          child: Container(
            padding: const EdgeInsets.all(AppSpacing.m),
            decoration: BoxDecoration(
              borderRadius: AppRadius.xs.asBorderRadius,
              color: isSelected
                  ? AppColors.primary.withAlpha((0.15 * 255).round())
                  : Colors.transparent,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.itemLabel(item),
                    style: AppTypography.snackBarSubtitle.copyWith(
                      height: 1.2,
                      color: isSelected ? AppColors.primary : null,
                    ),
                  ),
                ),
                if (isSelected)
                  Icon(Icons.check, color: AppColors.primary, size: 18),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildActionsRow(BuildContext context) {
    final canConfirm =
        selected != null || widget.disableConfirmUntilSelected == false;

    return Row(
      children: [
        Expanded(child: _buildConfirmButton(context, enabled: canConfirm)),
      ],
    );
  }

  Widget _buildConfirmButton(BuildContext context, {required bool enabled}) {
    return ElevatedButton(
      onPressed: enabled
          ? () {
              final value = selected;
              if (value == null) return;

              Navigator.of(context, rootNavigator: true).pop(value);
              widget.onConfirm?.call(value);
            }
          : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.primary,
        padding: const EdgeInsets.all(AppSpacing.m),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: AppColors.primary
          ),
          borderRadius: AppRadius.xxl.asBorderRadius,
        ),
      ),
      child: Text(
        widget.confirmText,
        style: AppTypography.snackBarSubtitle.copyWith(
          color: enabled ? AppColors.primary : null,
        ),
      ),
    );
  }
}
