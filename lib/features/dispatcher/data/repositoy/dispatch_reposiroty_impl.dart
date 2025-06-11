import 'package:driver_app/core/entities/ride.dart';
import 'package:driver_app/core/enums/type_codes.dart';
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
    RideDto rideDto = RideDto(
      typeCode: RideTypeCode.cancelRide,
      content: cancel,
      error: "",
    );
    datasource.sendRideAction(rideDto);
  }

  @override
  void dispatchNewRide(Ride ride) {
    RideDto rideDto = RideDto(
      typeCode: RideTypeCode.newRide,
      content: ride,
      error: "",
    );
    datasource.sendRideAction(rideDto);
  }

  @override
  void updateRide(Ride ride) {
    RideDto rideDto = RideDto(
      typeCode: RideTypeCode.updateRide,
      content: ride,
      error: "",
    );
    datasource.sendRideAction(rideDto);
  }
}
