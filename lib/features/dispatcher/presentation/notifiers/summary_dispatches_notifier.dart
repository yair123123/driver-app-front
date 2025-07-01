import 'dart:async';

import 'package:driver_app/core/enums/dispatch_status.dart';
import 'package:driver_app/core/enums/ride_operation_code.dart';
import 'package:driver_app/features/bootstrap/domain/entities/ride/ride.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/get_event_active_ride.dart';
import 'package:driver_app/features/dispatcher/presentation/states/summary_dispatch_state.dart';
import 'package:driver_app/features/rides/domain/entities/ride_message_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SummaryDispatchesNotifier
    extends StateNotifier<List<SummaryDispatchState>> {
  final GetEventActiveRideUsecase listenToNewActiveRideEventsEvents;

  late StreamSubscription<RideMessageDto> _subscription;

  SummaryDispatchesNotifier(this.listenToNewActiveRideEventsEvents)
    : super([]) {
    _subscription = listenToNewActiveRideEventsEvents().listen((event) {
      switch (event.operationCode) {
        case RideOperationCode.notifyDispatcherPassengerWasPickedUp:
          driverPickupPassenger(event.content['id']);
          break;
        case RideOperationCode.notifyDispatcherRideEnded:
          rideCompleted(event.content['id']);
          break;
        case RideOperationCode.notifyDispatcherRideWasTaken:
          rideTaken(event.content['rideId'], event.content['driverId']);
          break;
        case RideOperationCode.notifyDispatcherRideRequestWasCanceled:
          driverCanceledTen(event.content['id']);
          break;
        default:
          print("Unknown operation code: ${event.operationCode}");
          break;
      }
    });
  }
  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  void rideTaken(String rideId, int driverId) {
    state =
        state.map((e) {
          if (e.id == rideId) {
            return e.copyWith(
              status: DispatchStatus.taken,
              driverName: "Driver $driverId",
            );
          } else {
            return e;
          }
        }).toList();
  }

  void driverPickupPassenger(String rideId) {
    state =
        state.map((e) {
          if (e.id == rideId) {
            return e.copyWith(status: DispatchStatus.onWay);
          } else {
            return e;
          }
        }).toList();
  }

  void rideCompleted(String rideId) {
    state =
        state.map((e) {
          if (e.id == rideId) {
            return e.copyWith(status: DispatchStatus.complete);
          } else {
            return e;
          }
        }).toList();
  }

  void driverCanceledTen(String rideId) {
    state =
        state.map((e) {
          if (e.id == rideId) {
            return e.copyWith(status: DispatchStatus.waiting, driverName: null);
          } else {
            return e;
          }
        }).toList();
  }

  void addDispatch(Ride ride) {
    final newState = [...state, SummaryDispatchState.initialFromRide(ride)];
    state = newState;
  }
}
