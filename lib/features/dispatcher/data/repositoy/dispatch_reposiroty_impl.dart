import 'package:driver_app/core/enums/ride_operation_code.dart';
import 'package:driver_app/features/bootstrap/domain/entities/ride/ride.dart';
import 'package:driver_app/features/dispatcher/data/datasources/http_datasource.dart';
import 'package:driver_app/features/dispatcher/data/datasources/websocket_datasource.dart';
import 'package:driver_app/features/dispatcher/domain/entities/cancel_ride.dart';
import 'package:driver_app/features/dispatcher/domain/entities/initial_screen.dart';
import 'package:driver_app/features/dispatcher/domain/repositories/dispatch_repository.dart';
import 'package:driver_app/features/rides/domain/entities/ride_message_dto.dart';

class DispatchRepositoryImpl implements DispatchRepository {
  final HttpDatasource httoDatasource;
  final WebsocketDatasource websocketDatasource;

  DispatchRepositoryImpl(this.httoDatasource,this.websocketDatasource);

  Future<InitialScreen> initialScreen() {
    return httoDatasource.initialScreenByApi();
  }

  @override
  void cancelRide(CancelRide cancel) {
    RideMessageDto rideDto = RideMessageDto(
      operationCode: RideOperationCode.cancel,
      content: cancel,
      error: "",
    );
    websocketDatasource.sendRideAction(rideDto);
  }

  @override
  void dispatchNewRide(Ride ride) {
    RideMessageDto rideDto = RideMessageDto(
      operationCode: RideOperationCode.dispatch,
      content: ride,
      error: "",
    );
    websocketDatasource.sendRideAction(rideDto);
  }

  @override
  void updateRide(Ride ride) {
    RideMessageDto rideDto = RideMessageDto(
      operationCode: RideOperationCode.update,
      content: ride,
      error: "",
    );
    websocketDatasource.sendRideAction(rideDto);
  }

  @override
  Stream<Map<String, String>> getAckDispatch() {
    return websocketDatasource
        .getRidesEvents()
        .where(
          (event) => event.operationCode == RideOperationCode.confirmDispatch,
        )
        .map((event) => Map<String, String>.from(event.content));
  }

  @override
  Stream<RideMessageDto > getEventsActiveRide() {
    return websocketDatasource
        .getRidesEvents()
        .where(
          (event) =>
              event.operationCode ==
                  RideOperationCode.notifyDispatcherPassengerWasPickedUp ||
              event.operationCode ==
                  RideOperationCode.notifyDispatcherRideWasTaken ||
              event.operationCode ==
                  RideOperationCode.notifyDispatcherRideEnded ||
              event.operationCode ==
                  RideOperationCode.notifyDispatcherRideRequestWasCanceled,
        );  }
}
