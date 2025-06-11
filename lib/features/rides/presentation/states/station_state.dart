import 'package:driver_app/core/entities/ride.dart';
import 'package:driver_app/core/providers/user_provider.dart';
import 'package:driver_app/features/main/domein/entities/station.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StationState {
  List<Ride> rides;
  Station station;

  StationState({required this.rides, required this.station});

  StationState copyWith({List<Ride>? rides, Station? station}) {
    return StationState(
      rides: rides ?? this.rides,
      station: station ?? this.station,
    );
  }
  static List<StationState> initialStations(Ref ref) {
    final initialStations = ref.watch(userProvider).value!.driver_stations;
    return initialStations.map ((station) => StationState(rides: [], station: station)).toList();

  }
}
