import 'package:driver_app/core/enums/ride_step.dart';
import 'package:driver_app/features/bootstrap/domain/entities/ride/ride.dart';
class ActiveRideState {
  final RideNextStep step;
  final Ride ride;

  ActiveRideState(this.ride,this.step);

  static ActiveRideState initial(Ride ride){
    return ActiveRideState(ride,RideNextStep.pickup);
  }

  ActiveRideState copyWith({
    Ride? ride,
    RideNextStep? step,
  }) {
    return ActiveRideState(
      ride ?? this.ride,
      step ?? this.step,
    );
  }
}
