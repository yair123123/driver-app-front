import 'package:driver_app/features/driver_rides/domain/entities/driver_ride_preview.dart';
import 'package:driver_app/features/driver_rides/domain/entities/map_bounds.dart';

class DriverMapRidesState {
  const DriverMapRidesState({
    this.rides = const [],
    this.isLoading = false,
    this.error,
    this.lastLoadedBounds,
    this.lastFetchedAt,
  });

  final List<DriverRidePreview> rides;
  final bool isLoading;
  final Object? error;
  final MapBounds? lastLoadedBounds;
  final DateTime? lastFetchedAt;

  DriverMapRidesState copyWith({
    List<DriverRidePreview>? rides,
    bool? isLoading,
    Object? error = _unset,
    Object? lastLoadedBounds = _unset,
    Object? lastFetchedAt = _unset,
  }) {
    return DriverMapRidesState(
      rides: rides ?? this.rides,
      isLoading: isLoading ?? this.isLoading,
      error: error == _unset ? this.error : error,
      lastLoadedBounds:
          lastLoadedBounds == _unset
              ? this.lastLoadedBounds
              : lastLoadedBounds as MapBounds?,
      lastFetchedAt:
          lastFetchedAt == _unset
              ? this.lastFetchedAt
              : lastFetchedAt as DateTime?,
    );
  }
}

const Object _unset = Object();
