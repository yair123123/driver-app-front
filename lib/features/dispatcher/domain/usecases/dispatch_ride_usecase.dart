import 'package:driver_app/core/entities/ride.dart';
import 'package:driver_app/features/dispatcher/domain/repositories/dispatch_repository.dart';

class DispatchNewRideUsecase {
  final DispatchRepository repository;
  DispatchNewRideUsecase(this.repository);

  void call(Ride ride){
    repository.dispatchNewRide(ride);
  }
}