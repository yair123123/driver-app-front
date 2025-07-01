// ride_state.dart
import 'package:driver_app/core/app/app_state_notifier.dart';
import 'package:driver_app/features/bootstrap/domain/entities/ride/ride.dart';
import 'package:driver_app/features/bootstrap/domain/entities/station/station.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RidesScreenState {
  final Ride? selectedRide;
  final List<Station> stations;
  final String? errorMessage;
  
  const RidesScreenState({

    required this.stations,
    this.selectedRide = null,
    this.errorMessage,
  });

  RidesScreenState copyWith({
    Ride? selectedRide,
    List<Station>? stations,
    bool? isLoading,
    String? errorMessage,
  }) {
    return RidesScreenState(
      selectedRide: selectedRide ?? this.selectedRide,
      stations: stations ?? this.stations,
      errorMessage: errorMessage,
    );
  }
  factory RidesScreenState.initial(Ref ref) =>
  RidesScreenState(stations:  ref.read(appStateNotifierProvider).user!.driver_stations);
}
