import 'package:driver_app/features/driver_rides/domain/entities/driver_ride_preview.dart';
import 'package:driver_app/features/driver_rides/domain/entities/map_bounds.dart';
import 'package:driver_app/features/driver_rides/domain/repositories/driver_rides_repository.dart';

class GetDriverMapRidesUseCase {
  const GetDriverMapRidesUseCase(this.repository);

  final DriverRidesRepository repository;

  Future<List<DriverRidePreview>> call({required MapBounds bounds}) {
    return repository.getMapRides(bounds: bounds);
  }
}
