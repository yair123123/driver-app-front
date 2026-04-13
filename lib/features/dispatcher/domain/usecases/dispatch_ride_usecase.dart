import 'package:driver_app/features/dispatcher/domain/entities/offer.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride.dart';
import 'package:driver_app/features/dispatcher/domain/repositories/dispatch_repository.dart';

class DispatchNewRideUseCase {
  final DispatchRepository repository;
  DispatchNewRideUseCase(this.repository);

  void call(Offer ride){
    repository.dispatchNewOffer(ride);
  }
}