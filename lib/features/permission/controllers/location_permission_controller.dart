import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/location_permission_service.dart';

class LocationPermissionState {
  final LocationAuth whenInUseStatus;
  final LocationAuth alwaysStatus;
  final bool isRequesting;

  const LocationPermissionState({
    required this.whenInUseStatus,
    required this.alwaysStatus,
    required this.isRequesting,
  });

  const LocationPermissionState.initial()
    : whenInUseStatus = LocationAuth.notRequested,
      alwaysStatus = LocationAuth.notRequested,
      isRequesting = false;

  bool get hasWhenInUse => whenInUseStatus == LocationAuth.granted;

  bool get hasAlways => alwaysStatus == LocationAuth.granted;

  LocationPermissionState copyWith({
    LocationAuth? whenInUseStatus,
    LocationAuth? alwaysStatus,
    bool? isRequesting,
  }) {
    return LocationPermissionState(
      whenInUseStatus: whenInUseStatus ?? this.whenInUseStatus,
      alwaysStatus: alwaysStatus ?? this.alwaysStatus,
      isRequesting: isRequesting ?? this.isRequesting,
    );
  }
}

final locationPermissionControllerProvider =
    AsyncNotifierProvider<LocationPermissionController, LocationPermissionState>(
      LocationPermissionController.new,
    );

class LocationPermissionController
    extends AsyncNotifier<LocationPermissionState> {
  @override
  Future<LocationPermissionState> build() async {
    final service = ref.read(locationPermissionServiceProvider);

    final whenInUse = await service.getWhenInUseStatus();
    final always = await service.getAlwaysStatus();

    return LocationPermissionState(
      whenInUseStatus: whenInUse,
      alwaysStatus: always,
      isRequesting: false,
    );
  }

  Future<void> refresh() async {
    final current = state.valueOrNull ?? const LocationPermissionState.initial();
    final service = ref.read(locationPermissionServiceProvider);

    final whenInUse = await service.getWhenInUseStatus();
    final always = await service.getAlwaysStatus();

    state = AsyncData(
      current.copyWith(
        whenInUseStatus: whenInUse,
        alwaysStatus: always,
        isRequesting: false,
      ),
    );
  }

  Future<LocationAuth> requestWhenInUse() async {
    final current = state.valueOrNull ?? const LocationPermissionState.initial();

    if (current.isRequesting || current.hasWhenInUse) {
      return current.whenInUseStatus;
    }

    if (current.whenInUseStatus == LocationAuth.permanentlyDenied) {
      await openSettings();
      return current.whenInUseStatus;
    }

    state = AsyncData(current.copyWith(isRequesting: true));

    final service = ref.read(locationPermissionServiceProvider);
    final whenInUse = await service.requestWhenInUse();
    final always = await service.getAlwaysStatus();

    state = AsyncData(
      current.copyWith(
        whenInUseStatus: whenInUse,
        alwaysStatus: always,
        isRequesting: false,
      ),
    );

    return whenInUse;
  }

  Future<LocationAuth> requestAlways() async {
    final current = state.valueOrNull ?? const LocationPermissionState.initial();

    if (current.isRequesting || current.hasAlways) {
      return current.alwaysStatus;
    }

    if (current.alwaysStatus == LocationAuth.permanentlyDenied) {
      await openSettings();
      return current.alwaysStatus;
    }

    state = AsyncData(current.copyWith(isRequesting: true));

    final service = ref.read(locationPermissionServiceProvider);
    final always = await service.requestAlways();
    final whenInUse = await service.getWhenInUseStatus();

    state = AsyncData(
      current.copyWith(
        whenInUseStatus: whenInUse,
        alwaysStatus: always,
        isRequesting: false,
      ),
    );

    return always;
  }

  Future<void> openSettings() {
    final service = ref.read(locationPermissionServiceProvider);
    return service.openSettings();
  }
}
