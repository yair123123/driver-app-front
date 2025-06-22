// ride_state.dart
import 'package:driver_app/core/entities/ride.dart';
import 'package:driver_app/core/providers/user_provider.dart';
import 'package:driver_app/features/main/domein/entities/station.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RideState {
  final Ride? selectedRide;
  final List<Station> stations;
  final bool isLoading;
  final String? errorMessage;
  
  const RideState({

    required this.stations,
    this.selectedRide = null,
    this.isLoading = false,
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
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
    );
  }
  factory RideState.initial(Ref ref) =>
  RideState(stations:  ref.watch(userProvider)!.driver_stations);

}
