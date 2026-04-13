import 'package:driver_app/features/rides/data/datasources/rides_remote_data_source.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride.dart';
import 'package:driver_app/features/rides/domain/repositories/rides_repository.dart';
import 'package:driver_app/features/rides/presentation/states/rides_query.dart';

class RidesRepositoryImpl implements RidesRepository {
  RidesRepositoryImpl(this._remoteDataSource);

  final RidesRemoteDataSource _remoteDataSource;

  @override
  Future<List<Ride>> getRides(RidesQuery query) {
    return _remoteDataSource.getRides(query);
  }
}
