import 'package:driver_app/features/rides/data/datasources/rides_remote_data_source.dart';
import 'package:driver_app/features/rides/data/mappers/ride_map_item_dto_mapper.dart';
import 'package:driver_app/features/rides/domain/repositories/rides_repository.dart';
import 'package:driver_app/features/rides/presentation/states/rides_query.dart';

import '../../domain/entities/ride/ride_map_item.dart';
import '../models/ride_map_item_dto.dart';

class RidesRepositoryImpl implements RidesRepository {
  RidesRepositoryImpl(this._remoteDataSource);

  final RidesRemoteDataSource _remoteDataSource;

  @override
  Future<List<RideMapItem>> getRides(RidesQuery query) async{
    final rideDtos =  await _remoteDataSource.getRides(query);
    return rideDtos.map((dto) => dto.toEntity()).toList();
  }
}
