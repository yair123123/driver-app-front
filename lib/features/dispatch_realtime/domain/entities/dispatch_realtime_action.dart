sealed class DispatchRealtimeAction {
  const DispatchRealtimeAction();
}

class AcceptRideOfferAction extends DispatchRealtimeAction {
  const AcceptRideOfferAction({required this.rideId, this.roundId});

  final int rideId;
  final String? roundId;
}

class RejectRideOfferAction extends DispatchRealtimeAction {
  const RejectRideOfferAction({
    required this.rideId,
    this.roundId,
    this.reason,
  });

  final int rideId;
  final String? roundId;
  final String? reason;
}

class CallCustomerAction extends DispatchRealtimeAction {
  const CallCustomerAction({required this.rideId});

  final int rideId;
}

class UpdateRideStatusAction extends DispatchRealtimeAction {
  const UpdateRideStatusAction({required this.rideId, required this.status});

  final int rideId;
  final String status;
}
