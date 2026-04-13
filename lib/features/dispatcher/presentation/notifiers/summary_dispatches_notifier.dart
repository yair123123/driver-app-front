import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/enums/dispatch_status.dart';
import '../../../../core/enums/ride_operation_code.dart';
import '../../../dispatch_realtime/domain/entities/dispatch_realtime_event.dart';
import '../../../rides/domain/entities/ride/ride.dart';
import '../../domain/usecases/get_event_active_ride.dart';
import '../states/summary_dispatch_state.dart';

class SummaryDispatchesNotifier extends StateNotifier<List<SummaryDispatchState>> {
  final GetEventActiveRideUsecase _listenToEvents;
  StreamSubscription<DispatchRealtimeEvent>? _subscription;

  SummaryDispatchesNotifier(this._listenToEvents) : super([]) {
    _subscription = _listenToEvents().listen(_handleEvent);
  }

  void _handleEvent(DispatchRealtimeEvent event) {
    switch (event.message.operationCode) {
      case RideOperationCode.notifyDispatcherPassengerWasPickedUp:
        _updateRideStatus(
          event.rideId ?? event.payload?['id']?.toString() ?? '',
          DispatchStatus.onWay,
        );
        return;
      case RideOperationCode.notifyDispatcherRideEnded:
        _updateRideStatus(
          event.rideId ?? event.payload?['id']?.toString() ?? '',
          DispatchStatus.complete,
        );
        return;
      case RideOperationCode.notifyDispatcherRideWasTaken:
        _markRideTaken(
          rideId: event.payload?['rideId']?.toString() ?? event.rideId ?? '',
          driverId: event.payload?['driverId'] as int? ?? 0,
        );
        return;
      case RideOperationCode.notifyDispatcherRideRequestWasCanceled:
        _markRideWaiting(event.rideId ?? event.payload?['id']?.toString() ?? '');
        return;
      default:
        break;
    }

    switch (event.type) {
      case DispatchRealtimeEventType.raw:
        return;
      case DispatchRealtimeEventType.rideCreated:
      case DispatchRealtimeEventType.rideUpdated:
      case DispatchRealtimeEventType.offerReceived:
        return;
      case DispatchRealtimeEventType.rideAssigned:
        if (event.payload != null) {
          _markRideTaken(
            rideId: event.rideId ?? '',
            driverId: event.payload!['driverId'] as int? ?? 0,
          );
        }
        break;
      case DispatchRealtimeEventType.rideRemoved:
      case DispatchRealtimeEventType.offerExpired:
      case DispatchRealtimeEventType.offerCancelled:
        if (event.rideId != null) {
          _markRideWaiting(event.rideId!);
        }
        return;
    }
  }

  void addDispatch(Ride ride) {
    final alreadyExists = state.any((e) => e.id == ride.id);
    if (alreadyExists) return;

    state = [...state, SummaryDispatchState.initialFromRide(ride)];
  }

  void _updateRideStatus(String rideId, DispatchStatus status) {
    state = [
      for (final item in state)
        if (item.id == rideId) item.copyWith(status: status) else item,
    ];
  }

  void _markRideTaken({required String rideId, required int driverId}) {
    state = [
      for (final item in state)
        if (item.id == rideId)
          item.copyWith(
            status: DispatchStatus.taken,
            driverName: 'Driver $driverId',
          )
        else
          item,
    ];
  }

  void _markRideWaiting(String rideId) {
    state = [
      for (final item in state)
        if (item.id == rideId)
          item.copyWith(status: DispatchStatus.waiting, driverName: null)
        else
          item,
    ];
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
