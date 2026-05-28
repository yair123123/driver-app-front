import 'package:driver_app/features/driver_rides/data/datasources/driver_rides_remote_data_source.dart';
import 'package:driver_app/features/driver_rides/data/mappers/driver_ride_preview_dto_mapper.dart';
import 'package:driver_app/features/driver_rides/domain/entities/driver_ride_preview.dart';
import 'package:driver_app/features/driver_rides/domain/entities/map_bounds.dart';
import 'package:driver_app/features/driver_rides/domain/repositories/driver_rides_repository.dart';

class DriverRidesRepositoryImpl implements DriverRidesRepository {
  const DriverRidesRepositoryImpl({required this.remoteDataSource});

  final DriverRidesRemoteDataSource remoteDataSource;

  @override
  Future<List<DriverRidePreview>> getMapRides({
    required MapBounds bounds,
  }) async {
    final dtos = await remoteDataSource.getMapRides(bounds: bounds);
    return dtos.toEntities();
  }
}
