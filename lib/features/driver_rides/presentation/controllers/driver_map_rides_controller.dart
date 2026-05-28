import 'dart:math' as math;

import 'package:driver_app/features/driver_rides/domain/entities/map_bounds.dart';
import 'package:driver_app/features/driver_rides/presentation/providers/driver_rides_dependencies.dart';
import 'package:driver_app/features/driver_rides/presentation/states/driver_map_rides_state.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride_map_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DriverMapRidesController extends Notifier<DriverMapRidesState> {
  static const Duration _minimumFetchInterval = Duration(seconds: 4);
  static const double _meaningfulBoundsShiftRatio = 0.18;

  int _requestId = 0;

  @override
  DriverMapRidesState build() {
    return const DriverMapRidesState();
  }

  Future<void> loadForBounds(MapBounds bounds, {bool force = false}) async {
    if (!force && !_shouldFetch(bounds)) return;

    final currentRequestId = ++_requestId;
    state = state.copyWith(isLoading: true, error: null);

    try {
      final rides = await ref.read(getDriverMapRidesUseCaseProvider)(
        bounds: bounds,
      );
      if (currentRequestId != _requestId) return;

      state = DriverMapRidesState(
        rides: rides
            .where((ride) => ride.status == RideStatus.open)
            .toList(growable: false),
        lastLoadedBounds: bounds,
        lastFetchedAt: DateTime.now(),
      );
    } catch (error) {
      if (currentRequestId != _requestId) return;

      state = state.copyWith(
        isLoading: false,
        error: error,
        lastLoadedBounds: bounds,
        lastFetchedAt: DateTime.now(),
      );
    }
  }

  bool _shouldFetch(MapBounds bounds) {
    final lastFetchedAt = state.lastFetchedAt;
    final recentlyFetched =
        lastFetchedAt != null &&
        DateTime.now().difference(lastFetchedAt) < _minimumFetchInterval;
    if (recentlyFetched) return false;

    final lastLoadedBounds = state.lastLoadedBounds;
    if (lastLoadedBounds == null) return true;

    return _hasMeaningfullyChanged(bounds, lastLoadedBounds);
  }

  bool _hasMeaningfullyChanged(MapBounds next, MapBounds previous) {
    final previousLatSpan = (previous.north - previous.south).abs();
    final previousLonSpan = (previous.east - previous.west).abs();
    final latThreshold = math.max(
      previousLatSpan * _meaningfulBoundsShiftRatio,
      0.002,
    );
    final lonThreshold = math.max(
      previousLonSpan * _meaningfulBoundsShiftRatio,
      0.002,
    );

    return (next.north - previous.north).abs() > latThreshold ||
        (next.south - previous.south).abs() > latThreshold ||
        (next.east - previous.east).abs() > lonThreshold ||
        (next.west - previous.west).abs() > lonThreshold;
  }
}
