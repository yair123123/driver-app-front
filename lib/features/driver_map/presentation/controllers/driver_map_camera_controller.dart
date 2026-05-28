import 'dart:async';

import 'package:driver_app/features/driver_map/domain/entities/driver_map_item.dart';
import 'package:driver_app/features/driver_map/domain/entities/driver_map_item_type.dart';
import 'package:driver_app/features/driver_map/presentation/camera/driver_map_camera_follower.dart';
import 'package:driver_app/features/driver_map/presentation/providers/driver_map_controller_provider.dart';
import 'package:driver_app/features/driver_map/presentation/states/driver_map_state.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride_map_item.dart';
import 'package:driver_app/features/rides/domain/entities/ride_filter_params.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maplibre_gl/maplibre_gl.dart';

class DriverMapCameraController {
  DriverMapCameraController(this._ref);

  static const _defaultLatitude = 31.7683;
  static const _defaultLongitude = 35.2137;
  static const _defaultZoom = 13.0;

  final Ref _ref;
  final DriverMapCameraFollower _cameraFollower = DriverMapCameraFollower();

  MapLibreMapController? _mapController;
  double _viewportHeight = 0;
  bool _isDisposed = false;

  void attachMapController(MapLibreMapController controller) {
    _mapController = controller;
  }

  Future<void> moveToRide(RideMapItem ride) async {
    final controller = _mapController;
    if (controller == null) return;
    final lat = ride.originLat;
    final lon = ride.originLon;
    await controller.moveCamera(
      CameraUpdate.newLatLngZoom(LatLng(lat, lon), 16),
    );
  }

  void detachMapController() {
    _mapController = null;
    _viewportHeight = 0;
    _cameraFollower.reset();
  }

  void updateViewportHeight(double height) {
    _viewportHeight = height;
  }

  void requestDriverFollow() {
    _ref.read(driverMapControllerProvider.notifier).requestDriverFollow();
  }

  CameraPosition initialCameraPosition(DriverMapState mapState) {
    final selfDriver = _selfDriver(mapState);

    return CameraPosition(
      target: LatLng(
        selfDriver?.latitude ?? _defaultLatitude,
        selfDriver?.longitude ?? _defaultLongitude,
      ),
      bearing: selfDriver?.heading ?? 0,
      zoom:
          selfDriver == null
              ? _defaultZoom
              : DriverMapCameraFollower.navigationZoom,
    );
  }

  Future<void> followDriver({bool force = false}) async {
    final controller = _mapController;
    if (controller == null) return;

    final latestState = _ref.read(driverMapControllerProvider);
    if (!force && !latestState.isFollowingDriver) return;
    if (!latestState.isStyleLoaded) return;

    final self = _selfDriver(latestState);
    if (self == null) return;

    if (!force && _cameraFollower.isAnimationInFlight) return;
    if (force) {
      _cameraFollower.reset();
    }

    final mapNotifier = _ref.read(driverMapControllerProvider.notifier);
    mapNotifier.beginProgrammaticCameraMove();

    final cameraMove = await _cameraFollower.followDriver(
      controller: controller,
      mapState: latestState,
      driver: self,
      viewportHeight: _viewportHeight,
      force: force,
    );

    if (cameraMove == null) {
      if (!_cameraFollower.isAnimationInFlight) {
        mapNotifier.endProgrammaticCameraMove();
      }
      return;
    }

    mapNotifier.recordFollowCameraPosition(
      latitude: cameraMove.driverLatitude,
      longitude: cameraMove.driverLongitude,
      bearing: cameraMove.bearing,
    );

    Future<void>.delayed(
      DriverMapCameraFollower.cameraAnimationDuration +
          const Duration(milliseconds: 150),
      () {
        if (_isDisposed) return;

        _ref
            .read(driverMapControllerProvider.notifier)
            .endProgrammaticCameraMove();
      },
    );
  }

  Future<void> handleCameraIdle() async {
    _ref.read(driverMapControllerProvider.notifier).markUserInteractionEnded();
    await loadVisibleRidePreviews();
  }

  void handleCameraMove() {
    final currentMapState = _ref.read(driverMapControllerProvider);
    if (!currentMapState.isStyleLoaded) return;
    if (currentMapState.isProgrammaticCameraMove) return;

    _ref
        .read(driverMapControllerProvider.notifier)
        .disableDriverFollowForUserInteraction();
  }

  Future<void> loadVisibleRidePreviews({bool force = false}) async {
    final bounds = await getVisibleRideBounds();
    if (bounds == null) return;

    await _ref
        .read(rideMapRidesControllerProvider.notifier)
        .loadForBounds(bounds, force: force);
  }

  Future<RideMapBounds?> getVisibleRideBounds() async {
    final controller = _mapController;
    if (controller == null) return null;

    final visibleRegion = await controller.getVisibleRegion();

    return RideMapBounds(
      north: visibleRegion.northeast.latitude,
      south: visibleRegion.southwest.latitude,
      east: visibleRegion.northeast.longitude,
      west: visibleRegion.southwest.longitude,
    );
  }

  Future<T?> withMapController<T>(
    FutureOr<T> Function(MapLibreMapController controller) action,
  ) async {
    final controller = _mapController;
    if (controller == null) return null;

    return action(controller);
  }

  void dispose() {
    _isDisposed = true;
    detachMapController();
  }

  DriverMapItem? _selfDriver(DriverMapState mapState) {
    return mapState.items
        .where((item) => item.type == DriverMapItemType.selfDriver)
        .firstOrNull;
  }
}
