
class CancelOffer {
  final String rideId;
  final String reason;

  const CancelOffer({required this.rideId, required this.reason});

  @override
  String toString() => 'CancelOffer(rideId: $rideId, reason: $reason)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CancelOffer &&
          runtimeType == other.runtimeType &&
          rideId == other.rideId &&
          reason == other.reason;

  @override
  int get hashCode => rideId.hashCode ^ reason.hashCode;
}
