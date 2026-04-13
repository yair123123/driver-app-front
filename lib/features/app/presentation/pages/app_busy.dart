import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:driver_app/features/app/domain/entities/app_runtime.dart';
import 'package:driver_app/l10n/app_localizations.dart';
import 'package:driver_app/theme/app_spacing.dart';
import 'package:driver_app/theme/app_typography.dart';
class AppBusyPage extends HookWidget {
  final AppBusyReason? reason;

  const AppBusyPage({super.key, this.reason});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final controller = useAnimationController(
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    final moveAnimation = Tween<double>(
      begin: -12,
      end: 12,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOutSine,
      ),
    );

    final opacityAnimation = Tween<double>(
      begin: 0.85,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      ),
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: controller,
              builder: (context, child) {
                return Opacity(
                  opacity: opacityAnimation.value,
                  child: Transform.translate(
                    offset: Offset(0, moveAnimation.value),
                    child: child,
                  ),
                );
              },
              child: Image.asset("assets/images/plan.png"),
            ),
            const SizedBox(height: AppSpacing.lg),
            Text(
              l10n.busyLandingTitle,
              style: AppTypography.appBusyPageTitle,
            ),
            Text(
              l10n.busyLandingSubtitle,
              style: AppTypography.appBusyPageSubtitle,
            ),
          ],
        ),
      ),
    );
  }
}
