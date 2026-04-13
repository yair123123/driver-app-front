import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_event.dart';
import 'package:driver_app/features/dispatch_realtime/presentation/providers/dispatch_realtime_dependencies.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IncomingRideOffersController extends Notifier<List<Ride>> {
  @override
  List<Ride> build() {
    ref.listen<AsyncValue<DispatchRealtimeEvent>>(dispatchEventsProvider, (
      _,
      next,
    ) {
      next.whenData(_handleEvent);
    });

    return const <Ride>[];
  }

  void _handleEvent(DispatchRealtimeEvent event) {
    switch (event.type) {
      case DispatchRealtimeEventType.offerReceived:
        if (event.ride != null) {
          state = _upsertRide(state, event.ride!);
        }
        return;
      case DispatchRealtimeEventType.rideAssigned:
      case DispatchRealtimeEventType.rideRemoved:
      case DispatchRealtimeEventType.offerExpired:
      case DispatchRealtimeEventType.offerCancelled:
        if (event.rideId != null) {
          state = state
              .where((ride) => ride.id != event.rideId)
              .toList(growable: false);
        }
        return;
      case DispatchRealtimeEventType.rideCreated:
      case DispatchRealtimeEventType.rideUpdated:
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
}
