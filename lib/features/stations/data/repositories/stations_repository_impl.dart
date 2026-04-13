import 'package:driver_app/features/stations/data/datasources/stations_remote_data_source.dart';
import 'package:driver_app/features/stations/data/mappers/station_mapper.dart';
import 'package:driver_app/features/stations/domain/entities/station.dart';
import 'package:driver_app/features/stations/domain/repositories/stations_repository.dart';

class StationsRepositoryImpl implements StationsRepository {
  final StationsRemoteDataSource remoteDataSource;

  StationsRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Station>> getAllStations() async {
    final models = await remoteDataSource.getAllStations();
    return models.map((model) => model.toEntity()).toList(growable: false);
  }
}
