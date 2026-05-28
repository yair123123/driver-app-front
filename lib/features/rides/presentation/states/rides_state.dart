import 'package:driver_app/features/rides/domain/entities/ride/ride_map_item.dart';
import 'package:driver_app/features/rides/domain/entities/ride_filter_params.dart';

class RidesState {
  const RidesState({
    required this.rides,
    required this.filterParams,
    required this.lastFetchedAt,
  });

  final List<RideMapItem> rides;
  final RideFilterParams filterParams;
  final DateTime lastFetchedAt;

  RidesState copyWith({
    List<RideMapItem>? rides,
    RideFilterParams? filterParams,
    DateTime? lastFetchedAt,
  }) {
    return RidesState(
      rides: rides ?? this.rides,
      filterParams: filterParams ?? this.filterParams,
      lastFetchedAt: lastFetchedAt ?? this.lastFetchedAt,
    );
  }
}
