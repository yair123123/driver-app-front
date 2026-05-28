import 'package:driver_app/features/rides/domain/entities/ride/ride_map_item.dart';
import 'package:driver_app/features/rides/domain/entities/ride_filter_params.dart';

class RideMapRidesState {
  const RideMapRidesState({
    this.rides = const [],
    this.filters = const RideFilterParams.map(),
    this.isLoading = false,
    this.error,
    this.lastLoadedParams,
    this.lastFetchedAt,
  });

  final List<RideMapItem> rides;
  final RideFilterParams filters;
  final bool isLoading;
  final Object? error;
  final RideFilterParams? lastLoadedParams;
  final DateTime? lastFetchedAt;

  RideMapRidesState copyWith({
    List<RideMapItem>? rides,
    RideFilterParams? filters,
    bool? isLoading,
    Object? error = _unset,
    Object? lastLoadedParams = _unset,
    Object? lastFetchedAt = _unset,
  }) {
    return RideMapRidesState(
      rides: rides ?? this.rides,
      filters: filters ?? this.filters,
      isLoading: isLoading ?? this.isLoading,
      error: error == _unset ? this.error : error,
      lastLoadedParams:
          lastLoadedParams == _unset
              ? this.lastLoadedParams
              : lastLoadedParams as RideFilterParams?,
      lastFetchedAt:
          lastFetchedAt == _unset
              ? this.lastFetchedAt
              : lastFetchedAt as DateTime?,
    );
  }
}

const Object _unset = Object();
