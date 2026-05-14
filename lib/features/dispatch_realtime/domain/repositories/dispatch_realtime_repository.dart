import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_action.dart';
import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_event.dart';

abstract class DispatchRealtimeRepository {
  Stream<DispatchRealtimeEvent> get events;

  Future<void> sendAction(DispatchRealtimeAction action);

  Future<void> acceptRideOffer({required int rideId, String? roundId});

  Future<void> rejectRideOffer({
    required int rideId,
    String? roundId,
    String? reason,
  });

  Future<void> callCustomer({required int rideId});

  Future<void> updateRideStatus({required int rideId, required String status});
}
