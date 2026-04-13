import 'package:driver_app/features/rides/domain/entities/ride/ride.dart';

import '../../../stations/domain/entities/station.dart';

class StationRideListState {
  Station station;
  List<Ride> rides;

  StationRideListState({required this.station, required this.rides});
}
