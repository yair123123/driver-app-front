class DriverLocation {
  const DriverLocation({
    required this.latitude,
    required this.longitude,
    required this.recordedAt,
    this.accuracy,
    this.heading,
    this.speed,
  });

  final double latitude;
  final double longitude;
  final DateTime recordedAt;
  final double? accuracy;
  final double? heading;
  final double? speed;

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'recorded_at': recordedAt.toIso8601String(),
      if (accuracy != null) 'accuracy': accuracy,
      if (heading != null) 'heading': heading,
      if (speed != null) 'speed': speed,
    };
  }
}
