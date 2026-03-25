import 'package:flutter/material.dart';
import 'package:news_app/core/error/error_message_helper.dart';
import 'package:news_app/l10n/app_localizations.dart';
class ErrorCard extends StatelessWidget {
  final Object failure;
  final VoidCallback? onRetry;

  const ErrorCard({
    super.key,
    required this.failure,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final uiData = mapFailureToUiData(failure,l10n);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8, 
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 24),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              uiData.title,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (onRetry != null) ...[
            const SizedBox(width: 8),
            TextButton(
              onPressed: onRetry,
              child: const Text('נסה שוב'),
            ),
          ],
        ],
      ),
    );
  }
}
