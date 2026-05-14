import 'package:driver_app/features/dispatch_realtime/domain/entities/ride_action_result.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride_map_item.dart';

sealed class DispatchRealtimeEvent {
  const DispatchRealtimeEvent();
}

class RideCreatedRealtimeEvent extends DispatchRealtimeEvent {
  const RideCreatedRealtimeEvent({required this.ride});

  final RideMapItem ride;
}

class RideUpdatedRealtimeEvent extends DispatchRealtimeEvent {
  const RideUpdatedRealtimeEvent({required this.ride});

  final RideMapItem ride;
}

class RideCancelledRealtimeEvent extends DispatchRealtimeEvent {
  const RideCancelledRealtimeEvent({required this.rideId});

  final int rideId;
}

class RideAssignedRealtimeEvent extends DispatchRealtimeEvent {
  const RideAssignedRealtimeEvent({required this.rideId, this.driverId});

  final int rideId;
  final int? driverId;
}

class RideOfferReceivedRealtimeEvent extends DispatchRealtimeEvent {
  const RideOfferReceivedRealtimeEvent({
    required this.rideId,
    this.roundId,
    this.expiresAt,
    this.ride,
  });

  final int rideId;
  final String? roundId;
  final DateTime? expiresAt;
  final RideMapItem? ride;
}

class RideOfferExpiredRealtimeEvent extends DispatchRealtimeEvent {
  const RideOfferExpiredRealtimeEvent({required this.rideId, this.roundId});

  final int rideId;
  final String? roundId;
}

class RideOfferCancelledRealtimeEvent extends DispatchRealtimeEvent {
  const RideOfferCancelledRealtimeEvent({required this.rideId, this.roundId});

  final int rideId;
  final String? roundId;
}

class RideActionResultRealtimeEvent extends DispatchRealtimeEvent {
  const RideActionResultRealtimeEvent({required this.result});

  final RideActionResult result;
}

class UnknownDispatchRealtimeEvent extends DispatchRealtimeEvent {
  const UnknownDispatchRealtimeEvent({
    required this.operationCode,
    required this.content,
  });

  final int operationCode;
  final Map<String, dynamic>? content;
}

class InvalidDispatchRealtimeEvent extends DispatchRealtimeEvent {
  const InvalidDispatchRealtimeEvent({
    required this.operationCode,
    required this.error,
    required this.content,
  });

  final int operationCode;
  final Object error;
  final Map<String, dynamic>? content;
}
