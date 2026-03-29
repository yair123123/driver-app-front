import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/features/home/constants/app_constants.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:news_app/theme/app_spacing.dart';
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