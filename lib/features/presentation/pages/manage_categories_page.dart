import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_app/core/error/failure.dart';
import 'package:news_app/core/extensions/context_extention.dart';
import 'package:news_app/core/icons/app_svg_icon.dart';
import 'package:news_app/core/media/media_utils.dart';
import 'package:news_app/features/app/presentation/providers/app_shell_provider.dart';
import 'package:news_app/core/routes/app_router.dart';
import 'package:news_app/core/widget/asynv_body_helper.dart';
import 'package:news_app/core/widget/common_ui/custom_chip.dart';
import 'package:news_app/core/widget/common_ui/custom_list_view.dart';
import 'package:news_app/core/widget/list_view_children_wrap.dart';
import 'package:news_app/core/widget/parent_list_tile.dart';
import 'package:news_app/core/widget/common_ui/custom_confirm_dialog.dart';
import 'package:news_app/features/settings/presentation/notifiers/topics_settings_notifier.dart';
import 'package:news_app/features/settings/presentation/states/topics_settings_state.dart';
import 'package:news_app/features/settings/presentation/widgets/dismissible_notice.dart';
import 'package:news_app/features/system_messages/application/system_message_mapper.dart';
import 'package:news_app/features/system_messages/application/system_message_notifier.dart';
import 'package:news_app/features/system_messages/domain/system_message.dart';
import 'package:news_app/features/topics/domain/entities/subtopic.dart';
import 'package:news_app/features/topics/domain/entities/topic.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:news_app/theme/app_colors.dart';
import 'package:news_app/theme/app_spacing.dart';
import 'package:news_app/theme/app_typography.dart';
import 'package:news_app/core/icons/custom_icon.dart';

class ManageCategoriesPage extends HookConsumerWidget {
  const ManageCategoriesPage({super.key});

  Widget buildIcon(
    Topic topic,
    TopicsSettingsNotifier notifier,
    TopicsSettingsState state,
  ) {
    final status = state.selectionStatus(topic);
    final iconName = switch (status) {
      SelectionStatus.empty => CustomIcon.emptySelectionBlack,
      SelectionStatus.full => CustomIcon.fullSelectionBlack,
      SelectionStatus.partial => CustomIcon.partialSelectionBlack,
    };

    return GestureDetector(
      onTap: () => notifier.onIconPressed(topic),
      child: AppSvgIcon(
        icon: iconName,
        width: AppSpacing.tabIconSize,
        height: AppSpacing.tabIconSize,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;

    final stateAsync = ref.watch(topicsSettingsProvider);
    final notifier = ref.watch(topicsSettingsProvider.notifier);
    final systemMessageController = ref.read(systemMessageProvider.notifier);
    final data = stateAsync.valueOrNull;
    final canSave = data?.canSave ?? false;

    void onSave() {
      if (!canSave) return;

      CustomConfirmDialog.show(
        title: l10n.saveChanges,
        content: l10n.saveChangesSubtitle,
        context: context,
        onConfirm: () async {
          final ok = await notifier.save();
          if (ok) {
            systemMessageController.enqueue(
              SystemMessage.success(
                SystemMessageId.saveSuccess,
                BodyMode.titleOnly,
              ),
            );
            if (!context.mounted) return;
            context.goHome();
          } else {
            final systemMessageId = mapFailureToMessageId(
              stateAsync.error as Failure,
            );
            systemMessageController.enqueue(
              SystemMessage.error(systemMessageId),
            );
          }
        },
        onCancel: () {},
      );
    }

    final appBarController = ref.read(mainAppBarConfigProvider.notifier);

    useEffect(() {
      return () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          appBarController.state = const MainAppBarConfig();
        });
      };
    }, const []);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        appBarController.state = MainAppBarConfig(
          showSave: true,
          onTap: canSave ? onSave : null,
        );
      });
      return null;
    }, [canSave]);
    return SafeArea(
      child: Padding(
        padding: AppSpacing.managePagesPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: AppSpacing.lg,
          children: [
            DismissibleNotice(
              title: l10n.topicsSelectionTitle,
              message: l10n.topicsSelectionSubtitle,
            ),
            Text(l10n.newsTopics, style: AppTypography.managmentTitle),
            Expanded(
              child: AsyncBody(
                onRetry: () => notifier.onRetry(),
                value: stateAsync,
                builder: (state) {
                  final categories = state.topics;
                  return CustomListView<Topic>(
                    items: categories,
                    itemBuilder: (topic) => Padding(
                      padding: AppSpacing.bottomPadding,
                      child: ParentListTile(
                        icon: buildIcon(topic, notifier, state),
                        key: ValueKey('topic_${topic.value}'),
                        collapsedIconColor: AppColors.black,
                        cardColor: AppColors.white,
                        topic: topic,
                        listViewChildrenWrap: ListViewChildrenWrap(
                          runSpacing: AppSpacing.s,
                          spacing: AppSpacing.s,
                          parent: topic,
                          customChildChip: (child) => _buildCustomChip(
                            child,
                            state,
                            notifier.updateTopics,
                            context,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  CustomChip _buildCustomChip(
    SubTopic child,
    TopicsSettingsState state,
    void Function(Set<String>) updateTopics,
    BuildContext context,
  ) {
    final isSelected = state.selectedTopics.contains(child.value);
    void onTap() {
      final next = {...state.selectedTopics};
      isSelected ? next.remove(child.value) : next.add(child.value);
      updateTopics(next);
    }

    return CustomChip(
      key: ValueKey('child_${child.value}'),
      selectedColor: AppColors.primary,
      isSelected: isSelected,
      label: child.label,
      onPressed: onTap,
      unselectedTextStyle: context.textStyles.labelMedium?.apply(
        color: AppColors.black,
      ),
      selectedTextStyle: context.textStyles.labelMedium?.apply(
        color: AppColors.white,
      ),
      unselectedColor: AppColors.background,
    );
  }
}
