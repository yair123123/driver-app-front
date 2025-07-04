import 'package:driver_app/core/enums/ride_operation_code.dart';
import 'package:driver_app/features/rides/data/datasources/rides_websocket_datasource.dart';
import 'package:driver_app/features/rides/domain/entities/ride_message_dto.dart';
import 'package:driver_app/features/rides/domain/repositories/ride_websocket_repository.dart';

class RideRepositoryImpl implements RideRepository {
  final RidesWebSocketDatasource datasource;
  RideRepositoryImpl(this.datasource);

  @override
  Stream<RideMessageDto> listenToNewEventsRides() {
    return datasource.rideEvents;
  }

  @override
  Future<void> giveRide(String rideId) async {
    RideMessageDto rideDto = RideMessageDto(
      operationCode: RideOperationCode.requestRide,
      content: {"id": rideId},
      error: "",
    );
    datasource.sendRideAction(rideDto);
  }

  @override
  Future<void> pickup(String takeRide) async {
    RideMessageDto rideDto = RideMessageDto(
      operationCode: RideOperationCode.pickedUpPassenger,
      content: {"id": takeRide},
      error: "",
    );
    datasource.sendRideAction(rideDto);
  }

  @override
  Future<void> cancelRide(String rideId) async {
    RideMessageDto rideDto = RideMessageDto(
      operationCode: RideOperationCode.cancelTen,
      content: {"id": rideId},
      error: "",
    );
    datasource.sendRideAction(rideDto);
  }

  @override
  Future<void> completeRide(String rideId) async {
    RideMessageDto rideDto = RideMessageDto(
      operationCode: RideOperationCode.endRide,
      content: {"id": rideId},
      error: "",
    );
    datasource.sendRideAction(rideDto);
  }

  @override
  Stream<RideMessageDto> getAckReserve() {
    return datasource.rideEvents.where(
      (event) =>
          event.operationCode == RideOperationCode.rideRequestGranted ||
          event.operationCode == RideOperationCode.rideRequestDeniedAlreadyTaken ||
          event.operationCode == RideOperationCode.confirmPassengerWasPickedUp ||
          event.operationCode == RideOperationCode.endRideAck,
    );
  }
}
