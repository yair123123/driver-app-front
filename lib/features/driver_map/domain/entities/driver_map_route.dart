class DriverMapRoute {
  final String id;
  final List<DriverMapPoint> points;
  final DriverMapRouteType type;

  const DriverMapRoute({
    required this.id,
    required this.points,
    required this.type,
  });
}

class DriverMapPoint {
  final double latitude;
  final double longitude;

  const DriverMapPoint({
    required this.latitude,
    required this.longitude,
  });
}

enum DriverMapRouteType {
  toPickup,
  toDestination,
}