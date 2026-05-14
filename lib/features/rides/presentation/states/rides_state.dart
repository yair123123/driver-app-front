import 'package:driver_app/features/rides/domain/entities/ride/ride.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride_map_item.dart';
import 'package:driver_app/features/rides/presentation/states/rides_query.dart';

class RidesState {
  const RidesState({
    required this.rides,
    required this.query,
    required this.lastFetchedAt,
  });

  final List<RideMapItem> rides;
  final RidesQuery query;
  final DateTime lastFetchedAt;

  RidesState copyWith({
    List<RideMapItem>? rides,
    RidesQuery? query,
    DateTime? lastFetchedAt,
  }) {
    return RidesState(
      rides: rides ?? this.rides,
      query: query ?? this.query,
      lastFetchedAt: lastFetchedAt ?? this.lastFetchedAt,
    );
  }
}
