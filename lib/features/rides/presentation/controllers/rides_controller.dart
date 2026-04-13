import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_event.dart';
import 'package:driver_app/features/dispatch_realtime/presentation/providers/dispatch_realtime_providers.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_dependencies.dart';
import 'package:driver_app/features/rides/presentation/states/rides_query.dart';
import 'package:driver_app/features/rides/presentation/states/rides_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RidesController extends AsyncNotifier<RidesState> {
  @override
  Future<RidesState> build() async {
    ref.listen<AsyncValue<DispatchRealtimeEvent>>(dispatchEventsProvider, (
      _,
      next,
    ) {
      next.whenData(_applyRealtimeEvent);
    });

    final query = ref.watch(ridesQueryProvider);
    final rides = await ref.watch(getRidesUseCaseProvider)(query);

    return RidesState(
      rides: rides,
      query: query,
      lastFetchedAt: DateTime.now(),
    );
  }

  Future<void> refresh() async {
    final query = ref.read(ridesQueryProvider);
    state = await AsyncValue.guard(() async {
      final rides = await ref.read(getRidesUseCaseProvider)(query);
      return RidesState(
        rides: rides,
        query: query,
        lastFetchedAt: DateTime.now(),
      );
    });
  }

  void updateQuery(RidesQuery query) {
    ref.read(ridesQueryProvider.notifier).state = query;
  }

  void _applyRealtimeEvent(DispatchRealtimeEvent event) {
    final current = state.valueOrNull;
    if (current == null) {
      return;
    }

    switch (event.type) {
      case DispatchRealtimeEventType.rideCreated:
      case DispatchRealtimeEventType.rideUpdated:
      case DispatchRealtimeEventType.offerReceived:
        if (event.ride == null) {
          return;
        }
        state = AsyncData(
          current.copyWith(
            rides: _upsertRide(current.rides, event.ride!),
            lastFetchedAt: DateTime.now(),
          ),
        );
        return;
      case DispatchRealtimeEventType.rideRemoved:
      case DispatchRealtimeEventType.rideAssigned:
      case DispatchRealtimeEventType.offerExpired:
      case DispatchRealtimeEventType.offerCancelled:
        if (event.rideId == null) {
          return;
        }
        state = AsyncData(
          current.copyWith(
            rides: _removeRide(current.rides, event.rideId!),
            lastFetchedAt: DateTime.now(),
          ),
        );
        return;
      case DispatchRealtimeEventType.raw:
        return;
    }
  }

  List<Ride> _upsertRide(List<Ride> rides, Ride ride) {
    final next = [...rides];
    final index = next.indexWhere((candidate) => candidate.id == ride.id);

    if (index == -1) {
      next.add(ride);
    } else {
      next[index] = ride;
    }

    return next;
  }

  List<Ride> _removeRide(List<Ride> rides, String rideId) {
    return rides.where((ride) => ride.id != rideId).toList(growable: false);
  }
}
