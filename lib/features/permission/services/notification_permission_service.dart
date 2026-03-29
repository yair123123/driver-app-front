import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

enum NotificationAuth { granted, denied, permanentlyDenied, notRequested }

enum AppPlatform { ios, android, web, other }

abstract interface class NotificationPermissionService {
  Future<NotificationAuth> request();

  Future<NotificationAuth> getStatus();

  Future<void> openSettings();

  factory NotificationPermissionService.create({AppPlatform? platform}) {
    final p = platform ?? _detectPlatform();
    return switch (p) {
      AppPlatform.ios => _IosNotificationPermissionService(),
      AppPlatform.android => _AndroidNotificationPermissionService(),
      AppPlatform.web => _WebNotificationPermissionService(),
      AppPlatform.other => _UnsupportedNotificationPermissionService(),
    };
  }

  static AppPlatform _detectPlatform() {
    if (kIsWeb) return AppPlatform.web;
    if (Platform.isIOS || Platform.isMacOS) return AppPlatform.ios;
    if (Platform.isAndroid) return AppPlatform.android;
    return AppPlatform.other;
  }
}

final class _IosNotificationPermissionService
    implements NotificationPermissionService {
  @override
  Future<NotificationAuth> request() async {
    final settings = await FirebaseMessaging.instance.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    return switch (settings.authorizationStatus) {
      AuthorizationStatus.authorized ||
      AuthorizationStatus.provisional => NotificationAuth.granted,
      AuthorizationStatus.denied => NotificationAuth.permanentlyDenied,
      AuthorizationStatus.notDetermined => NotificationAuth.notRequested,
      _ => NotificationAuth.permanentlyDenied,
    };
  }

  @override
  Future<NotificationAuth> getStatus() async {
    final settings = await FirebaseMessaging.instance.getNotificationSettings();

    return switch (settings.authorizationStatus) {
      AuthorizationStatus.authorized ||
      AuthorizationStatus.provisional => NotificationAuth.granted,
      AuthorizationStatus.denied => NotificationAuth.denied,
      AuthorizationStatus.notDetermined => NotificationAuth.notRequested,
      _ => NotificationAuth.denied,
    };
  }

  @override
  Future<void> openSettings() => openAppSettings();
}

final class _AndroidNotificationPermissionService
    implements NotificationPermissionService {
  @override
  Future<NotificationAuth> request() async {
    final status = await Permission.notification.request();
    if (status.isGranted) return NotificationAuth.granted;
    if (status.isPermanentlyDenied) return NotificationAuth.permanentlyDenied;
    return NotificationAuth.denied;
  }

  @override
  Future<NotificationAuth> getStatus() async {
    final status = await Permission.notification.status;
    if (status.isGranted) return NotificationAuth.granted;
    if (status.isPermanentlyDenied) return NotificationAuth.permanentlyDenied;

    final showRationale =
        await Permission.notification.shouldShowRequestRationale;
    return showRationale
        ? NotificationAuth.denied
        : NotificationAuth.notRequested;
  }

  @override
  Future<void> openSettings() => openAppSettings();
}

final class _WebNotificationPermissionService
    implements NotificationPermissionService {
  @override
  Future<NotificationAuth> request() async => NotificationAuth.granted;

  @override
  Future<NotificationAuth> getStatus() async => NotificationAuth.granted;

  @override
  Future<void> openSettings() async {}
}

final class _UnsupportedNotificationPermissionService
    implements NotificationPermissionService {
  @override
  Future<NotificationAuth> request() async => NotificationAuth.denied;

  @override
  Future<NotificationAuth> getStatus() async => NotificationAuth.denied;

  @override
  Future<void> openSettings() async {}
}

final notificationPermissionServiceProvider = Provider(
  (_) => NotificationPermissionService.create(),
);
