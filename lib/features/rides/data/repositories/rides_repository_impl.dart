import 'package:driver_app/features/rides/data/datasources/rides_remote_data_source.dart';
import 'package:driver_app/features/rides/data/mappers/ride_map_item_dto_mapper.dart';
import 'package:driver_app/features/rides/domain/entities/ride_filter_params.dart';
import 'package:driver_app/features/rides/domain/repositories/rides_repository.dart';

import '../../domain/entities/ride/ride_map_item.dart';

class RidesRepositoryImpl implements RidesRepository {
  const RidesRepositoryImpl({required RidesRemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  final RidesRemoteDataSource _remoteDataSource;

  @override
  Future<List<RideMapItem>> getRides(RideFilterParams params) async {
    final rideDtos = await _remoteDataSource.getRides(params);
    return rideDtos.toEntities();
  }
}
