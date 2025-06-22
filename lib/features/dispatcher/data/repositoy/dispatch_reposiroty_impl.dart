import 'package:driver_app/core/entities/ride.dart';
import 'package:driver_app/core/enums/ride_operation_code.dart';
import 'package:driver_app/features/dispatcher/data/datasources/dispatcher_datasource.dart';
import 'package:driver_app/features/dispatcher/domain/entities/cancel_ride.dart';
import 'package:driver_app/features/dispatcher/domain/entities/initail_screen.dart';
import 'package:driver_app/features/dispatcher/domain/repositories/dispatch_repository.dart';
import 'package:driver_app/features/rides/domain/entities/ride_dto.dart';

class DispatchRepositoryImpl implements DispatchRepository {
  final DispatcherDatasource datasource;

  DispatchRepositoryImpl(this.datasource);

  Future<InitialScreen> initialScreen(){
    return datasource.initialScreen();
  }
  @override
  void cancelRide(CancelRide cancel) {
    RideMessageDto rideDto = RideMessageDto(
      operationCode: RideOperationCode.cancel,
      content: cancel,
      error: "",
    );
    datasource.sendRideAction(rideDto);
  }

  @override
  void dispatchNewRide(Ride ride) {
    RideMessageDto rideDto = RideMessageDto(
      operationCode: RideOperationCode.dispatch,
      content: ride,
      error: "",
    );
    datasource.sendRideAction(rideDto);
  }

  @override
  void updateRide(Ride ride) {
    RideMessageDto rideDto = RideMessageDto(
      operationCode: RideOperationCode.update,
      content: ride,
      error: "",
    );
    datasource.sendRideAction(rideDto);
  }
  @override
  Stream<Map<String,String>> getAckDispatch(){
    return datasource.getRidesEvents()
        .where((event) => event.operationCode == RideOperationCode.confirmDispatch)
        .map((event) => Map<String,String>.from(event.content));
  }
}
