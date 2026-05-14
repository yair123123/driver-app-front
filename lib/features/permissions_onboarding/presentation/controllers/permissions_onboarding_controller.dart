import 'package:driver_app/core/logger/firebase_logger.dart';
import 'package:driver_app/features/app/presentation/providers/app_prefs_provider.dart';
import 'package:driver_app/features/permission/controllers/location_permission_controller.dart';
import 'package:driver_app/features/permission/controllers/notification_permission_controller.dart';
import 'package:driver_app/features/permission/services/location_permission_service.dart';
import 'package:driver_app/features/permission/services/notification_permission_service.dart';
import 'package:driver_app/features/permissions_onboarding/presentation/states/permissions_onboarding_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final permissionsOnboardingControllerProvider = NotifierProvider<
  PermissionsOnboardingController,
  PermissionsOnboardingState
>(PermissionsOnboardingController.new);

class PermissionsOnboardingController
    extends Notifier<PermissionsOnboardingState> {
  @override
  PermissionsOnboardingState build() {
    final appPrefs = ref.watch(appProvider).appPrefs;
    return PermissionsOnboardingState(
      currentStep:
          appPrefs.permissionsOnboardingCompleted
              ? PermissionsOnboardingStep.completed
              : PermissionsOnboardingStep.intro,
      completed: appPrefs.permissionsOnboardingCompleted,
    );
  }

  Future<void> continueFromCurrentStep() async {
    if (state.isLoading) return;

    switch (state.currentStep) {
      case PermissionsOnboardingStep.intro:
        _goTo(PermissionsOnboardingStep.notifications);
        return;
      case PermissionsOnboardingStep.notifications:
        await _requestNotifications();
        return;
      case PermissionsOnboardingStep.locationWhenInUse:
        await _requestLocationWhenInUse();
        return;
      case PermissionsOnboardingStep.backgroundLocationExplanation:
        _goTo(PermissionsOnboardingStep.completed);
        return;
      case PermissionsOnboardingStep.completed:
        await completeOnboarding();
        return;
    }
  }

  void _goTo(PermissionsOnboardingStep step) {
    state = state.copyWith(currentStep: step, clearError: true);
  }

  Future<void> _requestNotifications() async {
    state = state.copyWith(isLoading: true, clearError: true);

    try {
      await ref.read(notificationPermissionProvider.future);
      await ref.read(notificationPermissionProvider.notifier).request();
      final permissionState =
          ref.read(notificationPermissionProvider).valueOrNull;
      final status = permissionState?.status ?? NotificationAuth.denied;

      state = state.copyWith(
        isLoading: false,
        notificationCompleted: status == NotificationAuth.granted,
        currentStep: PermissionsOnboardingStep.locationWhenInUse,
        errorMessage: _notificationMessage(status),
      );
    } catch (error, stack) {
      FirebaseLogger.e(
        'Notification permission onboarding failed',
        error: error,
        stack: stack,
      );
      state = state.copyWith(
        isLoading: false,
        notificationCompleted: false,
        currentStep: PermissionsOnboardingStep.locationWhenInUse,
        errorMessage:
            'לא הצלחנו להשלים את בקשת ההתראות. אפשר להמשיך ולשנות זאת בהגדרות.',
      );
    }
  }

  Future<void> _requestLocationWhenInUse() async {
    state = state.copyWith(isLoading: true, clearError: true);

    try {
      await ref.read(locationPermissionControllerProvider.future);
      final status =
          await ref
              .read(locationPermissionControllerProvider.notifier)
              .requestWhenInUse();

      state = state.copyWith(
        isLoading: false,
        locationWhenInUseCompleted: status == LocationAuth.granted,
        currentStep: PermissionsOnboardingStep.backgroundLocationExplanation,
        errorMessage: _locationMessage(status),
      );
    } catch (error, stack) {
      FirebaseLogger.e(
        'Location permission onboarding failed',
        error: error,
        stack: stack,
      );
      state = state.copyWith(
        isLoading: false,
        locationWhenInUseCompleted: false,
        currentStep: PermissionsOnboardingStep.backgroundLocationExplanation,
        errorMessage:
            'לא הצלחנו להשלים את בקשת המיקום. אפשר להמשיך ולשנות זאת בהגדרות.',
      );
    }
  }

  Future<void> completeOnboarding() async {
    if (state.isLoading) return;

    state = state.copyWith(isLoading: true, clearError: true);

    try {
       ref.read(appProvider.notifier).setPermissionsOnboardingCompleted(true);

      state = state.copyWith(
        isLoading: false,
        completed: true,
        currentStep: PermissionsOnboardingStep.completed,
      );
    } catch (error, stack) {
      FirebaseLogger.e(
        'Permissions onboarding completion failed',
        error: error,
        stack: stack,
      );
      state = state.copyWith(
        isLoading: false,
        errorMessage: 'לא הצלחנו לשמור את סיום התהליך. נסה שוב.',
      );
    }
  }

  String? _notificationMessage(NotificationAuth status) {
    return switch (status) {
      NotificationAuth.granted => null,
      NotificationAuth.permanentlyDenied =>
        'התראות חסומות בהגדרות המכשיר. אפשר להמשיך ולשנות זאת בהמשך.',
      NotificationAuth.denied =>
        'התראות לא אושרו כרגע. אפשר להמשיך ולהפעיל אותן בהגדרות.',
      NotificationAuth.notRequested => null,
    };
  }

  String? _locationMessage(LocationAuth status) {
    return switch (status) {
      LocationAuth.granted => null,
      LocationAuth.permanentlyDenied =>
        'מיקום חסום בהגדרות המכשיר. אפשר להמשיך ולשנות זאת בהמשך.',
      LocationAuth.denied =>
        'מיקום לא אושר כרגע. אפשר להמשיך ולהפעיל אותו בהגדרות.',
      LocationAuth.notRequested => null,
    };
  }
}
