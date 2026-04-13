import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:driver_app/core/navigation/dirty_provider.dart';
import 'package:driver_app/l10n/app_localizations.dart';

import '../widget/common_ui/custom_confirm_dialog.dart';

extension SafeNav on WidgetRef {
  Future<void> safeNavigate(
    BuildContext context, {
    required VoidCallback navigate,
    VoidCallback? onCancel,
    bool clearDirtyOnConfirm = true,
  }) async {
    final l10n = AppLocalizations.of(context)!;
    final isDirty = read(dirtyProvider);

    if (!isDirty) {
      navigate();
      return;
    }

    await CustomConfirmDialog.show(
      context: context,
      title: l10n.discardChangesTitle,
      content: l10n.discardChangesMessage,
      confirmText: l10n.discardButton,
      cancelText: l10n.stayButton,
      onConfirm: () {
        if (clearDirtyOnConfirm) {
          read(dirtyProvider.notifier).clear();
        }
        navigate();
      },
      onCancel: onCancel ?? () {},
    );
  }
}
