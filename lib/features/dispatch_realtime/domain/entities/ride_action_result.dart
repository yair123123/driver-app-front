class RideActionResult {
  const RideActionResult({
    required this.success,
    this.rideId,
    this.roundId,
    this.code,
    this.message,
  });

  final int? rideId;
  final String? roundId;
  final bool success;
  final String? code;
  final String? message;
}
