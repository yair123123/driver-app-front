import 'package:driver_app/features/driver_location/domain/entities/driver_location.dart';

abstract class DriverLocationRepository {
  Future<DriverLocation?> getCurrentLocation();

  Stream<DriverLocation> watchLocation();
}
