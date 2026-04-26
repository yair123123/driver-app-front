import 'package:driver_app/features/driver_location/data/datasources/device_location_data_source.dart';
import 'package:driver_app/features/driver_location/domain/entities/driver_location.dart';
import 'package:driver_app/features/driver_location/domain/repositories/driver_location_repository.dart';

class DriverLocationRepositoryImpl implements DriverLocationRepository {
  DriverLocationRepositoryImpl(this._deviceLocationDataSource);

  final DeviceLocationDataSource _deviceLocationDataSource;

  @override
  Future<DriverLocation?> getCurrentLocation() {
    return _deviceLocationDataSource.getCurrentLocation();
  }

  @override
  Stream<DriverLocation> watchLocation() {
    return _deviceLocationDataSource.watchLocation();
  }
}
