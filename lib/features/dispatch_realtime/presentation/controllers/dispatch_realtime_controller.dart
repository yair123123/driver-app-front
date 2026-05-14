import 'package:driver_app/features/dispatch_realtime/presentation/providers/dispatch_realtime_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum DispatchRealtimeActionStatus { idle, sending, success, error }

class DispatchRealtimeControllerState {
  const DispatchRealtimeControllerState({required this.status, this.message});

  const DispatchRealtimeControllerState.idle()
    : this(status: DispatchRealtimeActionStatus.idle);

  const DispatchRealtimeControllerState.sending()
    : this(status: DispatchRealtimeActionStatus.sending);

  const DispatchRealtimeControllerState.success()
    : this(status: DispatchRealtimeActionStatus.success);

  const DispatchRealtimeControllerState.error(String message)
    : this(status: DispatchRealtimeActionStatus.error, message: message);

  final DispatchRealtimeActionStatus status;
  final String? message;
}

class DispatchRealtimeController
    extends Notifier<DispatchRealtimeControllerState> {
  @override
  DispatchRealtimeControllerState build() {
    return const DispatchRealtimeControllerState.idle();
  }

  Future<void> acceptRideOffer({required int rideId, String? roundId}) async {
    state = const DispatchRealtimeControllerState.sending();

    try {
      await ref
          .read(dispatchRealtimeRepositoryProvider)
          .acceptRideOffer(rideId: rideId, roundId: roundId);
      state = const DispatchRealtimeControllerState.success();
    } catch (error) {
      state = DispatchRealtimeControllerState.error(error.toString());
    }
  }

  Future<void> rejectRideOffer({
    required int rideId,
    String? roundId,
    String? reason,
  }) async {
    state = const DispatchRealtimeControllerState.sending();

    try {
      await ref
          .read(dispatchRealtimeRepositoryProvider)
          .rejectRideOffer(rideId: rideId, roundId: roundId, reason: reason);
      state = const DispatchRealtimeControllerState.success();
    } catch (error) {
      state = DispatchRealtimeControllerState.error(error.toString());
    }
  }

  Future<void> callCustomer({required int rideId}) async {
    state = const DispatchRealtimeControllerState.sending();

    try {
      await ref
          .read(dispatchRealtimeRepositoryProvider)
          .callCustomer(rideId: rideId);
      state = const DispatchRealtimeControllerState.success();
    } catch (error) {
      state = DispatchRealtimeControllerState.error(error.toString());
    }
  }

  Future<void> updateRideStatus({
    required int rideId,
    required String status,
  }) async {
    state = const DispatchRealtimeControllerState.sending();

    try {
      await ref
          .read(dispatchRealtimeRepositoryProvider)
          .updateRideStatus(rideId: rideId, status: status);
      state = const DispatchRealtimeControllerState.success();
    } catch (error) {
      state = DispatchRealtimeControllerState.error(error.toString());
    }
  }
}
