import 'dart:math' as math;

import 'package:driver_app/features/rides/domain/entities/ride_filter_params.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_dependencies.dart';
import 'package:driver_app/features/rides/presentation/states/ride_map_rides_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RideMapRidesController extends Notifier<RideMapRidesState> {
  static const Duration _minimumFetchInterval = Duration(seconds: 4);
  static const double _meaningfulBoundsShiftRatio = 0.18;

  int _requestId = 0;

  @override
  RideMapRidesState build() {
    return const RideMapRidesState();
  }

  Future<void> loadForBounds(
    RideMapBounds bounds, {
    bool force = false,
    RideFilterParams? filters,
  }) async {
    final params = (filters ?? state.filters).copyWith(
      mapBounds: bounds,
      page: 1,
      viewMode: RidesViewMode.map,
    );

    if (!force && !_shouldFetch(params)) return;

    final currentRequestId = ++_requestId;
    state = state.copyWith(filters: params, isLoading: true, error: null);

    try {
      final rides = await ref.read(getRidesUseCaseProvider)(params);
      if (currentRequestId != _requestId) return;

      state = RideMapRidesState(
        rides: rides.where(params.matches).toList(growable: false),
        filters: params,
        lastLoadedParams: params,
        lastFetchedAt: DateTime.now(),
      );
    } catch (error) {
      if (currentRequestId != _requestId) return;

      state = state.copyWith(
        isLoading: false,
        error: error,
        lastLoadedParams: params,
        lastFetchedAt: DateTime.now(),
      );
    }
  }

  Future<void> updateFilters(
    RideFilterParams filters, {
    bool reloadVisibleBounds = true,
  }) async {
    final nextFilters = filters.copyWith(viewMode: RidesViewMode.map);
    state = state.copyWith(filters: nextFilters);

    final bounds = state.lastLoadedParams?.mapBounds;
    if (reloadVisibleBounds && bounds != null) {
      await loadForBounds(bounds, force: true, filters: nextFilters);
    }
  }

  bool _shouldFetch(RideFilterParams params) {
    final lastLoadedParams = state.lastLoadedParams;
    if (lastLoadedParams == null) return true;

    if (params.withoutMapBounds != lastLoadedParams.withoutMapBounds) {
      return true;
    }

    final lastFetchedAt = state.lastFetchedAt;
    final recentlyFetched =
        lastFetchedAt != null &&
        DateTime.now().difference(lastFetchedAt) < _minimumFetchInterval;
    if (recentlyFetched) return false;

    final nextBounds = params.mapBounds;
    final previousBounds = lastLoadedParams.mapBounds;
    if (nextBounds == null || previousBounds == null) {
      return params != lastLoadedParams;
    }

    return _hasMeaningfullyChanged(nextBounds, previousBounds);
  }

  bool _hasMeaningfullyChanged(RideMapBounds next, RideMapBounds previous) {
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
