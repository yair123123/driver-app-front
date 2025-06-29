// ride_state.dart
import 'package:driver_app/core/app/app_state_notifier.dart';
import 'package:driver_app/features/bootstrap/domain/entities/ride/ride.dart';
import 'package:driver_app/features/bootstrap/domain/entities/station/station.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RideState {
  final Ride? selectedRide;
  final List<Station> stations;
  final String? errorMessage;
  
  const RideState({

    required this.stations,
    this.selectedRide = null,
    this.errorMessage,
  });

  RideState copyWith({
    Ride? selectedRide,
    List<Station>? stations,
    bool? isLoading,
    String? errorMessage,
  }) {
    return RideState(
      selectedRide: selectedRide ?? this.selectedRide,
      stations: stations ?? this.stations,
      errorMessage: errorMessage,
    );
  }
  factory RideState.initial(Ref ref) =>
  RideState(stations:  ref.read(appStateNotifierProvider).user!.driver_stations);
}
