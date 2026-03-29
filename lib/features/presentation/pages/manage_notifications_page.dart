import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_app/core/extensions/context_extention.dart';
import 'package:news_app/core/widget/asynv_body_helper.dart';
import 'package:news_app/features/onboarding/widgets/notifications_select_list.dart';
import 'package:news_app/features/permission/controllers/notification_permission_controller.dart';
import 'package:news_app/features/permission/hooks/use_notification_permission_sync.dart';
import 'package:news_app/features/settings/presentation/notifiers/notifications_settings_notifier.dart';
import 'package:news_app/features/settings/presentation/widgets/dismissible_notice.dart';
import 'package:news_app/features/topics/presentation/providers/topics_provider.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:news_app/theme/app_colors.dart';
import 'package:news_app/theme/app_spacing.dart';
import 'package:news_app/theme/app_typography.dart';

class ManageNotificationsPage extends HookConsumerWidget {
  const ManageNotificationsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;

    final asyncState = ref.watch(notificationsSettingsProvider);
    final controller = ref.read(notificationsSettingsProvider.notifier);

    final permissionHandlerAsyncState = ref.watch(
      notificationPermissionProvider,
    );
    final permissionHandlerNotifier = ref.read(
      notificationPermissionProvider.notifier,
    );
    void onChanged(String selected) {
      controller.updateNotification(selected);
    }

    useNotificationPermissionSync(ref);
    return Padding(
      padding: AppSpacing.managePagesPadding,
      child: AsyncBody(
        value: permissionHandlerAsyncState,
        builder: (permissionState) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildNotice(
              permissionState,
              context,
              permissionHandlerNotifier.request,
            ),
            const SizedBox(height: AppSpacing.m),
            Text(l10n.manageNotifications, style: AppTypography.managmentTitle),
            const SizedBox(height: AppSpacing.lg),
            Expanded(
              child: SafeArea(
                child: AsyncBody(
                  onRetry: () {
                    ref.invalidate(notificationsSettingsProvider);
                    ref.invalidate(topicsProvider);
                  },
                  value: asyncState,
                  builder: (state) {
                    return NotificationsSelectList(
                      enabled: permissionState.isGranted,
                      height: AppHeights.notificationsSelectChild,
                      subtopics: state.notifications,
                      selectedIds: state.selected,
                      onChanged: onChanged,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  DismissibleNotice _buildNotice(
    NotificationPermissionState permissionState,
    BuildContext context,
    void Function() onPressed,
  ) {
    final l10n = AppLocalizations.of(context)!;
    if (!permissionState.isGranted) {
      final messageText = RichText(
        text: TextSpan(
          style: context.textStyles.bodySmall?.copyWith(
            color: AppColors.greyDark,
            height: 1.13,
            letterSpacing: -0.32,
          ),
          children: [
            TextSpan(text: "${l10n.notificationsOffSubtitle} "),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: GestureDetector(
                onTap: onPressed,
                child: Text(
                  l10n.toPowerOn,
                  style: context.textStyles.bodySmall?.copyWith(
                    color: AppColors.primary,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
      return DismissibleNotice(
        uriImage: "assets/images/bell_image.png",
        title: l10n.notificationsOffTitle,
        messageWidget: messageText,
      );
    } else {
      return DismissibleNotice(
        uriImage: "assets/images/bell_image.png",
        title: l10n.dismissibleNoticeNotificationsTitle,
        message: l10n.dismissibleNoticeNotificationsSubtitle,
      );
    }
  }
}
