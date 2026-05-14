class RideMapItem {
  final int id;
  final RideStatus status;
  final DateTime createdAt;

  final double? priceAmount;

  final double originLat;
  final double originLon;
  final String? originTitle;

  final double? destinationLat;
  final double? destinationLon;
  final String? destinationTitle;

  final String? originCity;
  final String? originStreet;
  final String? originHouseNumber;

  final String? destinationCity;
  final String? destinationStreet;
  final String? destinationHouseNumber;

  const RideMapItem({
    required this.id,
    required this.status,
    required this.createdAt,
    this.priceAmount,
    required this.originLat,
    required this.originLon,
    this.originTitle,
    this.destinationLat,
    this.destinationLon,
    this.destinationTitle,
    this.originCity,
    this.originStreet,
    this.originHouseNumber,
    this.destinationCity,
    this.destinationStreet,
    this.destinationHouseNumber,
  });
}

enum RideStatus {
  open,
  dispatching,
  assigned,
  enRoute,
  arrived,
  inProgress,
  completed,
  canceled,
  unknown,
}