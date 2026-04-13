import 'package:driver_app/features/stations/domain/entities/station.dart';
import 'package:driver_app/features/stations/domain/repositories/stations_repository.dart';

class GetAllStationsUseCase {
  final StationsRepository repository;

  GetAllStationsUseCase(this.repository);

  Future<List<Station>> call() {
    return repository.getAllStations();
  }
}
