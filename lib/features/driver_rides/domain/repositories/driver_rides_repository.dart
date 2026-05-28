import 'package:driver_app/features/driver_rides/domain/entities/driver_ride_preview.dart';
import 'package:driver_app/features/driver_rides/domain/entities/map_bounds.dart';

abstract class DriverRidesRepository {
  Future<List<DriverRidePreview>> getMapRides({required MapBounds bounds});
}
