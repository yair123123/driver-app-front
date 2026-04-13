import 'package:driver_app/core/utils/app_messenger.dart';
import 'package:driver_app/features/system_messages/application/system_message_notifier.dart';
import 'package:driver_app/features/system_messages/domain/system_message.dart';
import 'package:driver_app/features/system_messages/presentation/system_message_i18n.dart';
import 'package:driver_app/l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class SystemMessageListener extends ConsumerWidget {
  const SystemMessageListener({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(systemMessageProvider, (prev, next) {
      if (next.isEmpty) return;

      final msg = ref.read(systemMessageProvider.notifier).consumeNext();
      if (msg == null) return;
      if (!context.mounted) return;

      final l10n = AppLocalizations.of(context)!;
      final title = msg.id.title(l10n);
      final body =msg.isTitleOnly ? null : msg.id.body(l10n);

      switch (msg.type) {
        case TypeMessage.success:
          AppTopMessenger.success(context, title, body);
          break;
        case TypeMessage.error:
          AppTopMessenger.error(context, title, body);
          break;
        case TypeMessage.info:
          AppTopMessenger.info(context, title, body);
          break;
      }
    });

    return child;
  }
}
