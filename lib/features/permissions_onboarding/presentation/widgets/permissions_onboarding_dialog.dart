import 'package:driver_app/features/app/presentation/providers/app_prefs_provider.dart';
import 'package:driver_app/features/permissions_onboarding/presentation/controllers/permissions_onboarding_controller.dart';
import 'package:driver_app/features/permissions_onboarding/presentation/states/permissions_onboarding_state.dart';
import 'package:driver_app/features/permissions_onboarding/presentation/widgets/permission_explanation_step.dart';
import 'package:driver_app/theme/app_colors.dart';
import 'package:driver_app/theme/app_radius.dart';
import 'package:driver_app/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> showPermissionsOnboardingDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    barrierColor: Colors.black.withValues(alpha: 0.62),
    builder: (_) => const PermissionsOnboardingDialog(),
  );
}

class PermissionsOnboardingDialog extends ConsumerWidget {
  const PermissionsOnboardingDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(permissionsOnboardingControllerProvider);
    final controller = ref.read(
      permissionsOnboardingControllerProvider.notifier,
    );
    final content = _contentFor(state.currentStep);

    return PopScope(
      canPop: state.completed,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Dialog(
          insetPadding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.ml,
            vertical: AppSpacing.lg,
          ),
          backgroundColor: Colors.transparent,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 460),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: AppRadius.xl.asBorderRadius,
                border: Border.all(
                  color: AppColors.white.withValues(alpha: 0.08),
                ),
              ),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 220),
                child: SingleChildScrollView(
                  key: ValueKey(state.currentStep),
                  child: PermissionExplanationStep(
                    title: content.title,
                    description: content.description,
                    buttonText: content.buttonText,
                    icon: content.icon,
                    isLoading: state.isLoading,
                    message: state.errorMessage,
                    onPressed: () async {
                      await controller.continueFromCurrentStep();
                      if (!context.mounted) return;

                      final completed =
                          ref
                              .read(appProvider)
                              .appPrefs
                              .permissionsOnboardingCompleted;
                      if (completed) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          if (!context.mounted) return;
                          Navigator.of(context).pop();
                        });
                      }
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _StepContent _contentFor(PermissionsOnboardingStep step) {
    return switch (step) {
      PermissionsOnboardingStep.intro => const _StepContent(
        title: 'כמעט סיימנו',
        description:
            'כדי שהאפליקציה תעבוד בצורה תקינה, נבקש כמה הרשאות בסיסיות ונסביר למה כל אחת חשובה.',
        buttonText: 'המשך',
        icon: Icons.verified_user_outlined,
      ),
      PermissionsOnboardingStep.notifications => const _StepContent(
        title: 'התראות',
        description:
            'נשתמש בהתראות כדי לעדכן אותך על נסיעות חדשות, שינויים בנסיעה והודעות חשובות מהתחנה.',
        buttonText: 'אפשר התראות',
        icon: Icons.notifications_none_rounded,
      ),
      PermissionsOnboardingStep.locationWhenInUse => const _StepContent(
        title: 'מיקום בזמן שימוש',
        description:
            'נשתמש במיקום שלך כדי להציג אותך על המפה, למצוא נסיעות קרובות ולחשב הצעות רלוונטיות.',
        buttonText: 'אפשר מיקום',
        icon: Icons.location_on_outlined,
      ),
      PermissionsOnboardingStep.backgroundLocationExplanation =>
        const _StepContent(
          title: 'מיקום ברקע',
          description:
              'כאשר תסמן את עצמך כזמין, האפליקציה תצטרך להמשיך לעדכן את המיקום גם כשהיא לא פתוחה, כדי שתוכל לקבל נסיעות בזמן אמת. את ההרשאה הזאת נבקש רק בזמן הפעלת זמינות.',
          buttonText: 'הבנתי',
          icon: Icons.my_location_rounded,
        ),
      PermissionsOnboardingStep.completed => const _StepContent(
        title: 'הכל מוכן',
        description:
            'אפשר להתחיל להשתמש באפליקציה. תמיד ניתן לשנות הרשאות דרך הגדרות המכשיר.',
        buttonText: 'כניסה לאפליקציה',
        icon: Icons.check_circle_outline_rounded,
      ),
    };
  }
}

class _StepContent {
  const _StepContent({
    required this.title,
    required this.description,
    required this.buttonText,
    required this.icon,
  });

  final String title;
  final String description;
  final String buttonText;
  final IconData icon;
}
