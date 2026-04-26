import 'package:driver_app/features/driver_location/domain/entities/driver_location.dart';
import 'package:geolocator/geolocator.dart';

class DeviceLocationDataSource {
  static const _locationSettings = LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 10,
  );

  Future<DriverLocation?> getCurrentLocation() async {
    final canUseLocation = await _ensureLocationPermission();
    if (!canUseLocation) {
      return null;
    }

    final position = await Geolocator.getCurrentPosition(
      locationSettings: _locationSettings,
    );

    return _mapPosition(position);
  }

  Stream<DriverLocation> watchLocation() async* {
    final canUseLocation = await _ensureLocationPermission();
    if (!canUseLocation) {
      return;
    }

    yield* Geolocator.getPositionStream(
      locationSettings: _locationSettings,
    ).map(_mapPosition);
  }

  Future<bool> _ensureLocationPermission() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  DriverLocation _mapPosition(Position position) {
    return DriverLocation(
      latitude: position.latitude,
      longitude: position.longitude,
      recordedAt: position.timestamp,
      accuracy: position.accuracy,
      heading: position.heading,
      speed: position.speed,
    );
  }
}
