import 'package:driver_app/core/constants/app_constants.dart';
import 'package:driver_app/l10n/app_localizations.dart';
import 'package:flutter/services.dart';



Future<void> copyToClipboard(
    String? title,
    String? content,
    AppLocalizations l10n,
    ) async {
  final buffer = StringBuffer();

  if (title != null && title.isNotEmpty) {
    buffer.writeln('*$title*\n');
  }

  if (content != null && content.isNotEmpty) {
    buffer.writeln(content);
    buffer.writeln();
  }

  buffer.writeln('${l10n.sharedFromApp} ${AppConstants.appName}');

  await Clipboard.setData(
    ClipboardData(text: buffer.toString().trim()),
  );
}