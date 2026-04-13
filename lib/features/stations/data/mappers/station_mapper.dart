import 'package:driver_app/features/stations/data/models/station_model.dart';
import 'package:driver_app/features/stations/domain/entities/station.dart';

extension StationModelMapper on StationModel {
  Station toEntity() {
    return Station(
      id: id,
      name: name,
      isActive: isActive,
    );
  }
}

extension StationMapper on Station {
  StationModel toModel() {
    return StationModel(
      id: id,
      name: name,
      isActive: isActive,
    );
  }
}
