import 'package:driver_app/features/driver_location/domain/entities/driver_location.dart';
import 'package:driver_app/features/driver_location/domain/repositories/driver_location_repository.dart';

class GetCurrentDriverLocationUseCase {
  GetCurrentDriverLocationUseCase(this._repository);

  final DriverLocationRepository _repository;

  Future<DriverLocation?> call() {
    return _repository.getCurrentLocation();
  }
}
