import 'package:driver_app/core/error/failure.dart';
import 'package:driver_app/l10n/app_localizations.dart';
import 'package:driver_app/theme/app_colors.dart';
import 'package:driver_app/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'error_message_helper.dart';


class ErrorBody extends HookWidget {
  final Failure? failure;
  final VoidCallback? onRetry;
  final bool blackBackground;

  const ErrorBody({
    super.key,
    this.failure,
    this.onRetry,
    this.blackBackground = false,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final failureUi = mapFailureToUiData(failure, l10n);

    void handleRetry() => onRetry?.call();

    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (failureUi.imagePath != null) ...[
              Container(
                child: Image.asset(
                  failureUi.imagePath!,
                  width: 122,
                  height: 104,
                  fit: BoxFit.contain,
                ),
              )         ,     const SizedBox(height: AppSpacing.mlg),
            ],
            Text(
              failureUi.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall?.apply(
                color: blackBackground ? AppColors.white : AppColors.black,
              ),
            ),
            if (failureUi.detail != null) ...[
              const SizedBox(height: AppSpacing.xs),
              Text(
                failureUi.detail!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall?.apply(
                  color: blackBackground ? AppColors.white : AppColors.black,
                ),
              ),
            ],
            ...[
              const SizedBox(height: AppSpacing.sm),
              if (onRetry != null)
                ElevatedButton(
                  onPressed: handleRetry,
                  child: Text(l10n.try_again),
                ),
            ],
          ],
        ),
      ),
    );
  }
}
