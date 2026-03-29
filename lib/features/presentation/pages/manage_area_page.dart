import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_app/core/extensions/context_extention.dart';
import 'package:news_app/core/utils/app_messenger.dart';
import 'package:news_app/core/widget/asynv_body_helper.dart';
import 'package:news_app/core/widget/common_ui/custom_bottom_sheet.dart';
import 'package:news_app/core/widget/common_ui/custom_error_dialog.dart';
import 'package:news_app/core/widget/settings_tile.dart';
import 'package:news_app/core/widget/common_ui/custom_confirm_dialog.dart';
import 'package:news_app/features/lang_and_area/domain/area_entity.dart';
import 'package:news_app/features/settings/presentation/notifiers/area_settings_notifier.dart';
import 'package:news_app/features/settings/presentation/states/area_settings_state.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:news_app/theme/app_colors.dart';
import 'package:news_app/theme/app_radius.dart';
import 'package:news_app/theme/app_spacing.dart';
import 'package:news_app/theme/app_typography.dart';

class ManageAreaPage extends HookConsumerWidget {
  const ManageAreaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(areaSettingsProvider);
    final notifier = ref.read(areaSettingsProvider.notifier);
    final l10n = AppLocalizations.of(context)!;

    void removeAreaHandler(Area item) {
      CustomConfirmDialog.show(
        warning: true,
        content: l10n.removeAreaConfirmContent(item.label),
        title: l10n.removeArea,
        context: context,
        onConfirm: () async {
          final ok = await notifier.removeArea(item);
          if (ok) {
            if (!context.mounted) return;
            AppTopMessenger.success(
              context,
              l10n.changesSavedSuccessfully,
              l10n.areaWereRemoved,
            );
          } else {
            if (!context.mounted) return;
            CustomErrorDialog.show(context: context, content: "content");
          }
        },
      );
    }

    void addAreaHandler(items) async {
      final areaToAdd = await CustomBottomSelectSheet.show<Area>(
        itemLabel: (item) => item.label,
        items: items,
        title: l10n.selectCountry,
        context: context,
      );
      if (areaToAdd != null) {
        final ok = await notifier.addMultipleDifficultyArea(areaToAdd);
        if (ok) {
          if (!context.mounted) return;
          AppTopMessenger.success(
            context,
            l10n.changesSavedSuccessfully,
            l10n.areaWereAdded,
          );
        } else {
          if (!context.mounted) return;
          AppTopMessenger.error(context, l10n.success, l10n.success);
        }
      }
    }

    return Padding(
      padding: AppSpacing.managePagesPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(l10n.areaManagmentTitle, style: AppTypography.managmentTitle),
          const SizedBox(height: AppSpacing.lg),
          Text(l10n.areaManagmentSubtitle, style: context.textStyles.bodySmall),
          const SizedBox(height: AppSpacing.m),
          Expanded(
            child: AsyncBody<AreaSettingsState>(
              value: asyncState,
              builder: (state) {
                final areas = state.areasSelected;
                final allAreasActive =
                    state.allAreas.length == state.areasSelected.length;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        padding: AppSpacing.notificationsSelectListPadding,
                        itemCount: areas.length + 1,
                        itemBuilder: (context, i) {
                          final isAddButton = i == areas.length;
                          if (isAddButton) {
                            return !allAreasActive
                                ? Padding(
                                    padding: const EdgeInsets.only(
                                      top: AppSpacing.ml,
                                    ),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        shape: WidgetStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius: AppRadius.xs.asBorderRadius,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(l10n.addArea),
                                          const SizedBox(width: AppSpacing.sm),
                                          Icon(Icons.add),
                                        ],
                                      ),
                                      onPressed: () => addAreaHandler(
                                        state.allAreas
                                            .where(
                                              (a) => !state.areasSelected
                                                  .contains(a),
                                            )
                                            .toList(),
                                      ),
                                    ),
                                  )
                                : const SizedBox.shrink();
                          }
                          final sub = areas[i];
                          final isActive = state.currentArea == sub;
                          return SettingTile(
                            height: 52,
                            labelWidget: Text(
                              sub.label,
                              style: Theme.of(context).textTheme.bodySmall
                                  ?.apply(
                                    color: isActive ? AppColors.primary : null,
                                  ),
                            ),
                            trailing: isActive
                                ? Icon(Icons.check, color: AppColors.primary)
                                : Icon(Icons.remove, color: AppColors.black),
                            onTap: isActive
                                ? () {}
                                : () => removeAreaHandler(sub),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
