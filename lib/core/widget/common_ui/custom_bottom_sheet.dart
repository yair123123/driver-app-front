import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:driver_app/core/extensions/context_extention.dart';
import 'package:driver_app/core/widget/common_ui/custom_button.dart';
import 'package:driver_app/l10n/app_localizations.dart';
import 'package:driver_app/theme/app_colors.dart';
import 'package:driver_app/theme/app_spacing.dart';
import 'package:driver_app/theme/app_typography.dart';

class CustomBottomSelectSheet<T> extends HookWidget {
  const CustomBottomSelectSheet({
    super.key,
    required this.title,
    required this.items,
    required this.itemLabel,
    this.selected,
  });

  final String title;
  final List<T> items;
  final String Function(T item) itemLabel;
  final T? selected;

  static Future<Set<T>?> show<T>({
    required BuildContext context,
    required String title,
    required List<T> items,
    required String Function(T item) itemLabel,
  }) {
    return showModalBottomSheet<Set<T>>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => CustomBottomSelectSheet<T>(
        title: title,
        items: items,
        itemLabel: itemLabel,
      ),
    );
  }

  void onItemPressed(ValueNotifier<Set<T>> areaSelected, T item) {
    final next = areaSelected.value;
    areaSelected.value.contains(item) ? next.remove(item) : next.add(item);
    areaSelected.value = {...next};
  }

  @override
  Widget build(BuildContext context) {
    final areaSelected = useState<Set<T>>({});

    return _buildRootContainer(
      context: context,
      child: _buildSafeArea(
        child: _buildContent(
          context: context,
          areaSelected: areaSelected,
        ),
      ),
    );
  }

  // Root

  Widget _buildRootContainer({
    required BuildContext context,
    required Widget child,
  }) {
    return Container(
      padding: AppSpacing.bottomSelectSheetPadding,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppSpacing.ml),
        ),
      ),
      child: child,
    );
  }

  Widget _buildSafeArea({required Widget child}) {
    return SafeArea(
      top: false,
      child: child,
    );
  }

  Widget _buildContent({
    required BuildContext context,
    required ValueNotifier<Set<T>> areaSelected,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildHeader(context),
        const SizedBox(height: AppSpacing.mlg),
        _buildList(
          context: context,
          areaSelected: areaSelected,
        ),
        const SizedBox(height: AppSpacing.mlg),
        _buildActionsRow(context, () => context.pop(areaSelected.value)),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return SizedBox(
      height: 44,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _buildTitle(),
          _buildCloseButton(context),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Center(
      child: Text(
        title,
        style: AppTypography.managmentTitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildCloseButton(BuildContext context) {
    return PositionedDirectional(
      start: 0,
      child: IconButton(
        onPressed: context.pop,
        icon: const Icon(Icons.close),
        color: AppColors.black,
      ),
    );
  }

  // List

  Widget _buildList({
    required BuildContext context,
    required ValueNotifier<Set<T>> areaSelected,
  }) {
    return Flexible(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (_, index) {
          final item = items[index];
          final isSelected = areaSelected.value.contains(item);
          return _buildListItem(
            context: context,
            areaSelected: areaSelected,
            item: item,
            isSelected: isSelected,
          );
        },
      ),
    );
  }

  Widget _buildListItem({
    required BuildContext context,
    required ValueNotifier<Set<T>> areaSelected,
    required T item,
    required bool isSelected,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSpacing.sm),
      onTap: () => onItemPressed(areaSelected, item),
      child: Container(
        height: 52,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSpacing.sm),
        ),
        child: Row(
          children: [
            Expanded(child: _buildItemLabel(context, item, isSelected)),
            _buildSelectionIcon(isSelected),
          ],
        ),
      ),
    );
  }

  Widget _buildItemLabel(BuildContext context, T item, bool isSelected) {
    return Text(
      itemLabel(item),
      style: context.textStyles.bodySmall?.apply(
        color: isSelected ? AppColors.primary : AppColors.black,
      ),
    );
  }

  Widget _buildSelectionIcon(bool isSelected) {
    return isSelected
        ? Icon(
            Icons.check,
            key: const ValueKey('check'),
            color: AppColors.primary,
          )
        : const SizedBox(
            key: ValueKey('empty'),
            width: 24,
            height: 24,
          );
  }

  // Actions

  Widget _buildActionsRow(BuildContext context, VoidCallback onPress) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildConfirmButton(context, onPress),
        _buildCancelButton(context),
      ],
    );
  }

  Widget _buildConfirmButton(BuildContext context, VoidCallback onPress) {
    return CustomButton(
      onPress: onPress,
      text: AppLocalizations.of(context)!.confirm,
      width: 164,
      height: 40,
    );
  }

  Widget _buildCancelButton(BuildContext context) {
    return CustomButton(
      onPress: context.pop,
      text: AppLocalizations.of(context)!.cancel,
      width: 164,
      height: 40,
      backgroundColor: Colors.transparent,
      borderColor: AppColors.primary,
      textColor: AppColors.primary,
    );
  }
}
