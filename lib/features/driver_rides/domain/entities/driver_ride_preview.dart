import 'package:driver_app/features/rides/domain/entities/ride/ride_map_item.dart';

class DriverRidePreview {
  const DriverRidePreview({
    required this.id,
    required this.status,
    required this.createdAt,
    required this.stationId,
    required this.stationName,
    required this.originLat,
    required this.originLon,
    this.priceAmount,
    this.originTitle,
    this.originCity,
    this.originStreet,
    this.originHouseNumber,
    this.destinationLat,
    this.destinationLon,
    this.destinationTitle,
    this.destinationCity,
    this.destinationStreet,
    this.destinationHouseNumber,
  });

  final int id;
  final RideStatus status;
  final num? priceAmount;
  final DateTime createdAt;

  final int stationId;
  final String stationName;

  final double originLat;
  final double originLon;
  final String? originTitle;
  final String? originCity;
  final String? originStreet;
  final String? originHouseNumber;

  final double? destinationLat;
  final double? destinationLon;
  final String? destinationTitle;
  final String? destinationCity;
  final String? destinationStreet;
  final String? destinationHouseNumber;

  String get displayOriginTitle =>
      _firstNonEmpty(
        originTitle,
        _formatAddress(originStreet, originHouseNumber, originCity),
      ) ??
      '';

  String get displayDestinationTitle =>
      _firstNonEmpty(
        destinationTitle,
        _formatAddress(
          destinationStreet,
          destinationHouseNumber,
          destinationCity,
        ),
      ) ??
      '';

  bool get hasDestination => destinationLat != null && destinationLon != null;

  String get displayStationName => stationName;

  String? get displayPrice {
    final price = priceAmount;
    if (price == null) return null;

    final hasFraction = price % 1 != 0;
    final value =
        hasFraction ? price.toStringAsFixed(2) : price.toStringAsFixed(0);
    return '$value NIS';
  }

  static String? _formatAddress(
    String? street,
    String? houseNumber,
    String? city,
  ) {
    final streetLine = [
      street,
      houseNumber,
    ].where((part) => part != null && part.trim().isNotEmpty).join(' ');
    final parts = [streetLine, city]
        .where((part) => part != null && part.trim().isNotEmpty)
        .cast<String>()
        .toList(growable: false);

    if (parts.isEmpty) return null;
    return parts.join(', ');
  }

  static String? _firstNonEmpty(String? first, String? second) {
    if (first != null && first.trim().isNotEmpty) return first;
    if (second != null && second.trim().isNotEmpty) return second;
    return null;
  }
}
