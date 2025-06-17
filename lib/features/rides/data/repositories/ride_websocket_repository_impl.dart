import 'package:driver_app/core/enums/ride_operation_code.dart';
import 'package:driver_app/features/rides/data/datasources/rides_websocket_datasource.dart';
import 'package:driver_app/features/rides/domain/entities/ride_dto.dart';
import 'package:driver_app/features/rides/domain/repositories/ride_websocket_repository.dart';

class RideRepositoryImpl implements RideRepository {
  final RidesWebSocketDatasource datasource;
  RideRepositoryImpl(this.datasource);

  @override
  Stream<RideDto> listenToNewEventsRides() {
    return datasource.rideEvents;
  }

  @override
  Future<void> takeRide(Map<String, String> takeRide) async {
    RideDto rideDto = RideDto(operationCode: RideOperationCode.reserve, content: takeRide, error: "");
    datasource.sendRideAction(rideDto);
  }

  @override
  Future<void> pickup(Map<String, int> takeRide) async {
    // RideDto rideDto = RideDto(operation_code: RideOperationCode., content: takeRide, error: "");
    // datasource.sendRideAction(rideDto);
  }

  @override
  Future<void> completeRide(Map<String, int> takeRide) async {
    // RideDto rideDto = RideDto(operation_code: RideOperationCode.completeRide, content: takeRide, error: "");
    // datasource.sendRideAction(rideDto);
  }
}
