import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_app/core/navigation/dirty_provider.dart';
import 'package:news_app/core/routes/app_router.dart';
import 'package:news_app/features/app/presentation/providers/app_shell_provider.dart';
import 'package:news_app/core/utils/app_messenger.dart';
import 'package:news_app/core/widget/asynv_body_helper.dart';
import 'package:news_app/core/widget/common_ui/custom_error_dialog.dart';
import 'package:news_app/core/widget/settings_tile.dart';
import 'package:news_app/core/widget/common_ui/custom_confirm_dialog.dart';
import 'package:news_app/features/lang_and_area/presentation/lang_area_provider.dart';
import 'package:news_app/features/settings/presentation/notifiers/lang_settings_notifier.dart';
import 'package:news_app/features/settings/presentation/states/lang_settings_state.dart';
import 'package:news_app/features/system_messages/application/system_message_notifier.dart';
import 'package:news_app/features/system_messages/domain/system_message.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:news_app/theme/app_colors.dart';
import 'package:news_app/theme/app_spacing.dart';
import 'package:news_app/theme/app_typography.dart';

class ManageLangPage extends HookConsumerWidget {
  const ManageLangPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(langSettingsProvider);
    final notifier = ref.read(langSettingsProvider.notifier);
    final l10n = AppLocalizations.of(context)!;

    final data = asyncState.valueOrNull;
    final canSave = data?.canSave ?? false;

    void onSave() {
      if (!canSave) return;
      CustomConfirmDialog.show(
        title: l10n.saveChanges,
        content: l10n.saveChangesMessage,
        context: context,
        onConfirm: () async {
          final ok = await notifier.save();
          if (ok) {
            ref.read(systemMessageProvider.notifier).enqueue(SystemMessage.success(SystemMessageId.saveSuccess,BodyMode.titleOnly));
            context.goHome();
            ref.read(dirtyProvider.notifier).set(false);
          } else {
            ref.read(systemMessageProvider.notifier).enqueue(SystemMessage.error(SystemMessageId.noInternet));
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
        ref.read(dirtyProvider.notifier).set(canSave);

        appBarController.state = MainAppBarConfig(
          showSave: true,
          onTap: canSave ? onSave : null,
        );
      });
      return null;
    }, [canSave]);
    return Padding(
      padding: AppSpacing.managePagesPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.lang, style: AppTypography.managmentTitle),
          const SizedBox(height: AppSpacing.m),
          Expanded(
            child: AsyncBody<LangSettingsState>(
              value: asyncState,
              onRetry: () => ref.invalidate(langsProvider),
              builder: (state) {
                final langs = state.langs;
                return ListView.builder(
                  padding: AppSpacing.notificationsSelectListPadding,
                  itemCount: state.langs.length,
                  itemBuilder: (context, i) {
                    final sub = langs[i];
                    final isSelected = state.currentLang == sub;
                    return SettingTile(
                      height: 52,
                      labelWidget: Text(
                        sub.label,
                        style: Theme.of(context).textTheme.bodySmall?.apply(
                          color: isSelected ? AppColors.primary : null,
                        ),
                      ),
                      trailing: isSelected
                          ? Icon(Icons.check, color: AppColors.primary)
                          : const SizedBox.shrink(),
                      onTap: () => notifier.selectLang(sub),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
