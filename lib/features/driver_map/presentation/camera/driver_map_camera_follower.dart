import 'dart:math' as math;

import 'package:driver_app/features/driver_map/domain/entities/driver_map_item.dart';
import 'package:driver_app/features/driver_map/presentation/states/driver_map_state.dart';
import 'package:maplibre_gl/maplibre_gl.dart';

class DriverMapCameraMove {
  const DriverMapCameraMove({
    required this.driverLatitude,
    required this.driverLongitude,
    required this.bearing,
  });

  final double driverLatitude;
  final double driverLongitude;
  final double bearing;
}

class DriverMapCameraFollower {
  static const minMovementMeters = 8.0;
  static const minBearingDeltaDegrees = 5.0;
  static const minCameraUpdateInterval = Duration(milliseconds: 650);
  static const cameraAnimationDuration = Duration(milliseconds: 700);
  static const navigationZoom = 16.5;
  static const navigationTilt = 0.0;
  static const driverAnchorYFraction = 0.68;

  DateTime? _lastCameraUpdateAt;
  bool _animationInFlight = false;
  int _animationGeneration = 0;

  bool get isAnimationInFlight => _animationInFlight;

  void reset() {
    _lastCameraUpdateAt = null;
    _animationInFlight = false;
    _animationGeneration++;
  }

  Future<DriverMapCameraMove?> followDriver({
    required MapLibreMapController controller,
    required DriverMapState mapState,
    required DriverMapItem driver,
    required double viewportHeight,
    bool force = false,
  }) async {
    if (viewportHeight <= 0) return null;
    if (!force && _animationInFlight) return null;

    final currentPosition = controller.cameraPosition;
    final bearing =
        _usableBearing(driver.heading) ??
        mapState.lastCameraBearing ??
        currentPosition?.bearing ??
        0.0;

    if (!force && !_shouldMoveCamera(mapState, driver, bearing)) {
      return null;
    }

    final zoom =
        force
            ? navigationZoom
            : math.max(currentPosition?.zoom ?? navigationZoom, navigationZoom);
    final cameraTarget = _lowerThirdCameraTarget(
      driverLatitude: driver.latitude,
      driverLongitude: driver.longitude,
      bearing: bearing,
      zoom: zoom,
      viewportHeight: viewportHeight,
    );

    _startAnimationWindow();

    await controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: cameraTarget,
          bearing: bearing,
          tilt: navigationTilt,
          zoom: zoom,
        ),
      ),
      duration: cameraAnimationDuration,
    );

    _lastCameraUpdateAt = DateTime.now();

    return DriverMapCameraMove(
      driverLatitude: driver.latitude,
      driverLongitude: driver.longitude,
      bearing: bearing,
    );
  }

  bool _shouldMoveCamera(
    DriverMapState mapState,
    DriverMapItem driver,
    double bearing,
  ) {
    final lastUpdateAt = _lastCameraUpdateAt;
    if (lastUpdateAt != null &&
        DateTime.now().difference(lastUpdateAt) < minCameraUpdateInterval) {
      return false;
    }

    final previousLatitude = mapState.lastCameraLatitude;
    final previousLongitude = mapState.lastCameraLongitude;
    final movedEnough =
        previousLatitude == null || previousLongitude == null
            ? true
            : _distanceMeters(
                  previousLatitude,
                  previousLongitude,
                  driver.latitude,
                  driver.longitude,
                ) >=
                minMovementMeters;

    final previousBearing = mapState.lastCameraBearing;
    final bearingChangedEnough =
        previousBearing == null
            ? true
            : _bearingDelta(previousBearing, bearing) >= minBearingDeltaDegrees;

    return movedEnough || bearingChangedEnough;
  }

  void _startAnimationWindow() {
    _animationInFlight = true;
    final generation = ++_animationGeneration;

    Future<void>.delayed(
      cameraAnimationDuration + const Duration(milliseconds: 100),
      () {
        if (_animationGeneration == generation) {
          _animationInFlight = false;
        }
      },
    );
  }

  LatLng _lowerThirdCameraTarget({
    required double driverLatitude,
    required double driverLongitude,
    required double bearing,
    required double zoom,
    required double viewportHeight,
  }) {
    final verticalOffsetPixels = viewportHeight * (driverAnchorYFraction - 0.5);
    final metersPerPixel =
        math.cos(_toRadians(driverLatitude)) * 156543.03392 / math.pow(2, zoom);
    final targetDistanceMeters = verticalOffsetPixels * metersPerPixel;

    return _destinationPoint(
      latitude: driverLatitude,
      longitude: driverLongitude,
      bearing: bearing,
      distanceMeters: targetDistanceMeters,
    );
  }

  LatLng _destinationPoint({
    required double latitude,
    required double longitude,
    required double bearing,
    required double distanceMeters,
  }) {
    const earthRadiusMeters = 6371000.0;

    final angularDistance = distanceMeters / earthRadiusMeters;
    final bearingRadians = _toRadians(bearing);
    final latitudeRadians = _toRadians(latitude);
    final longitudeRadians = _toRadians(longitude);

    final destinationLatitude = math.asin(
      math.sin(latitudeRadians) * math.cos(angularDistance) +
          math.cos(latitudeRadians) *
              math.sin(angularDistance) *
              math.cos(bearingRadians),
    );
    final destinationLongitude =
        longitudeRadians +
        math.atan2(
          math.sin(bearingRadians) *
              math.sin(angularDistance) *
              math.cos(latitudeRadians),
          math.cos(angularDistance) -
              math.sin(latitudeRadians) * math.sin(destinationLatitude),
        );

    return LatLng(
      _toDegrees(destinationLatitude),
      _normalizeLongitude(_toDegrees(destinationLongitude)),
    );
  }

  double? _usableBearing(double? heading) {
    if (heading == null || heading.isNaN || heading < 0) return null;
    return heading % 360;
  }

  double _distanceMeters(
    double startLatitude,
    double startLongitude,
    double endLatitude,
    double endLongitude,
  ) {
    const earthRadiusMeters = 6371000.0;
    final startLat = _toRadians(startLatitude);
    final endLat = _toRadians(endLatitude);
    final deltaLat = _toRadians(endLatitude - startLatitude);
    final deltaLon = _toRadians(endLongitude - startLongitude);

    final a =
        math.sin(deltaLat / 2) * math.sin(deltaLat / 2) +
        math.cos(startLat) *
            math.cos(endLat) *
            math.sin(deltaLon / 2) *
            math.sin(deltaLon / 2);
    final c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));

    return earthRadiusMeters * c;
  }

  double _bearingDelta(double first, double second) {
    final difference = (first - second).abs() % 360;
    return difference > 180 ? 360 - difference : difference;
  }

  double _toRadians(double degrees) => degrees * math.pi / 180;

  double _toDegrees(double radians) => radians * 180 / math.pi;

  double _normalizeLongitude(double longitude) =>
      ((longitude + 540) % 360) - 180;
}
