import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:driver_app/core/logger/firebase_logger.dart';
import 'package:driver_app/features/system_messages/application/system_message_notifier.dart';
import 'package:driver_app/features/system_messages/domain/system_message.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openReference(String url, WidgetRef ref) async {
  print(url);
  final uri = Uri.tryParse(url);
  if (uri == null) {
    FirebaseLogger.e('Invalid URL', error: url);
    _sendUnknownError(ref);
    return;
  }

  try {
    final canLaunch = await canLaunchUrl(uri);
    FirebaseLogger.i('openReference: canLaunch=$canLaunch url=$url');

    final launched = await launchUrl(uri, mode: LaunchMode.platformDefault);
    FirebaseLogger.i('openReference: launched=$launched url=$url');

  } catch (e, st) {
    FirebaseLogger.e('openReference exception', error: e, stack: st);
    _sendUnknownError(ref);
  }
}

void _sendUnknownError(WidgetRef ref) => ref
    .read(systemMessageProvider.notifier)
    .enqueue(SystemMessage.error(SystemMessageId.unknown));
