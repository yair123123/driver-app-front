import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

enum LocationAuth { granted, denied, permanentlyDenied, notRequested }

enum LocationPermissionPlatform { ios, android, web, other }

abstract interface class LocationPermissionService {
  Future<LocationAuth> requestWhenInUse();

  Future<LocationAuth> requestAlways();

  Future<LocationAuth> getWhenInUseStatus();

  Future<LocationAuth> getAlwaysStatus();

  Future<void> openSettings();

  factory LocationPermissionService.create({LocationPermissionPlatform? platform}) {
    final p = platform ?? _detectPlatform();
    return switch (p) {
      LocationPermissionPlatform.ios => _MobileLocationPermissionService(),
      LocationPermissionPlatform.android => _MobileLocationPermissionService(),
      LocationPermissionPlatform.web => _UnsupportedLocationPermissionService(),
      LocationPermissionPlatform.other => _UnsupportedLocationPermissionService(),
    };
  }

  static LocationPermissionPlatform _detectPlatform() {
    if (kIsWeb) return LocationPermissionPlatform.web;
    if (Platform.isIOS) return LocationPermissionPlatform.ios;
    if (Platform.isAndroid) return LocationPermissionPlatform.android;
    return LocationPermissionPlatform.other;
  }
}

final class _MobileLocationPermissionService implements LocationPermissionService {
  @override
  Future<LocationAuth> requestWhenInUse() async {
    final status = await Permission.locationWhenInUse.request();
    return _mapStatus(status);
  }

  @override
  Future<LocationAuth> requestAlways() async {
    final whenInUseStatus = await Permission.locationWhenInUse.status;
    if (!whenInUseStatus.isGranted) {
      final requestedWhenInUse = await Permission.locationWhenInUse.request();
      if (!requestedWhenInUse.isGranted) return _mapStatus(requestedWhenInUse);
    }

    final status = await Permission.locationAlways.request();
    return _mapStatus(status);
  }

  @override
  Future<LocationAuth> getWhenInUseStatus() async {
    final status = await Permission.locationWhenInUse.status;
    return _mapStatus(status);
  }

  @override
  Future<LocationAuth> getAlwaysStatus() async {
    final status = await Permission.locationAlways.status;
    return _mapStatus(status);
  }

  @override
  Future<void> openSettings() => openAppSettings();

  LocationAuth _mapStatus(PermissionStatus status) {
    if (status.isGranted) return LocationAuth.granted;
    if (status.isPermanentlyDenied) return LocationAuth.permanentlyDenied;
    if (status.isDenied) return LocationAuth.denied;
    return LocationAuth.notRequested;
  }
}

final class _UnsupportedLocationPermissionService implements LocationPermissionService {
  @override
  Future<LocationAuth> requestWhenInUse() async => LocationAuth.denied;

  @override
  Future<LocationAuth> requestAlways() async => LocationAuth.denied;

  @override
  Future<LocationAuth> getWhenInUseStatus() async => LocationAuth.denied;

  @override
  Future<LocationAuth> getAlwaysStatus() async => LocationAuth.denied;

  @override
  Future<void> openSettings() async {}
}

final locationPermissionServiceProvider = Provider<LocationPermissionService>(
  (_) => LocationPermissionService.create(),
);
