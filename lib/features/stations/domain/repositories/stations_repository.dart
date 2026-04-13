import 'package:driver_app/features/stations/domain/entities/station.dart';

abstract class StationsRepository {
  Future<List<Station>> getAllStations();
}
