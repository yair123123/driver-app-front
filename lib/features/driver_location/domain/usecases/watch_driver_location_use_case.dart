import 'package:driver_app/features/driver_location/domain/entities/driver_location.dart';
import 'package:driver_app/features/driver_location/domain/repositories/driver_location_repository.dart';

class WatchDriverLocationUseCase {
  WatchDriverLocationUseCase(this._repository);

  final DriverLocationRepository _repository;

  Stream<DriverLocation> call() {
    return _repository.watchLocation();
  }
}
