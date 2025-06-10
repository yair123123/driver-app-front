import 'package:driver_app/core/entities/ride.dart';
import 'package:driver_app/features/dispatcher/domain/repositories/dispatch_repository.dart';

class UpdateRideUsecase {
  final DispatchRepository repository;
  UpdateRideUsecase(this.repository);

  void call(Ride ride){
    repository.updateRide(ride);
  }
}