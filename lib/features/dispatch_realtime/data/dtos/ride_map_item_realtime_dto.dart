import 'package:driver_app/features/rides/domain/entities/ride/ride_map_item.dart';

class RideMapItemRealtimeDto {
  const RideMapItemRealtimeDto({
    required this.id,
    required this.status,
    required this.createdAt,
    required this.originLat,
    required this.originLon,
    this.priceAmount,
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

  factory RideMapItemRealtimeDto.fromJson(Map<String, dynamic> json) {
    return RideMapItemRealtimeDto(
      id: _readRequiredInt(json, 'id', 'id'),
      status: _readRideStatus(json['status']),
      createdAt: _readRequiredDateTime(json, 'createdAt', 'created_at'),
      priceAmount: _readDouble(json, 'priceAmount', 'price_amount'),
      originLat: _readRequiredDouble(json, 'originLat', 'origin_lat'),
      originLon: _readRequiredDouble(json, 'originLon', 'origin_lon'),
      originTitle: _readString(json, 'originTitle', 'origin_title'),
      destinationLat: _readDouble(json, 'destinationLat', 'destination_lat'),
      destinationLon: _readDouble(json, 'destinationLon', 'destination_lon'),
      destinationTitle: _readString(
        json,
        'destinationTitle',
        'destination_title',
      ),
      originCity: _readString(json, 'originCity', 'origin_city'),
      originStreet: _readString(json, 'originStreet', 'origin_street'),
      originHouseNumber: _readString(
        json,
        'originHouseNumber',
        'origin_house_number',
      ),
      destinationCity: _readString(json, 'destinationCity', 'destination_city'),
      destinationStreet: _readString(
        json,
        'destinationStreet',
        'destination_street',
      ),
      destinationHouseNumber: _readString(
        json,
        'destinationHouseNumber',
        'destination_house_number',
      ),
    );
  }

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
}

int _readRequiredInt(
  Map<String, dynamic> json,
  String camelKey,
  String snakeKey,
) {
  final value = json[camelKey] ?? json[snakeKey];
  return switch (value) {
    int value => value,
    num value => value.toInt(),
    String value => int.parse(value),
    _ => throw FormatException('Missing required integer "$camelKey".'),
  };
}

double _readRequiredDouble(
  Map<String, dynamic> json,
  String camelKey,
  String snakeKey,
) {
  final value = _readDouble(json, camelKey, snakeKey);
  if (value == null) {
    throw FormatException('Missing required double "$camelKey".');
  }
  return value;
}

double? _readDouble(
  Map<String, dynamic> json,
  String camelKey,
  String snakeKey,
) {
  final value = json[camelKey] ?? json[snakeKey];
  return switch (value) {
    int value => value.toDouble(),
    num value => value.toDouble(),
    String value => double.tryParse(value),
    _ => null,
  };
}

DateTime _readRequiredDateTime(
  Map<String, dynamic> json,
  String camelKey,
  String snakeKey,
) {
  final value = json[camelKey] ?? json[snakeKey];
  return switch (value) {
    DateTime value => value,
    String value => DateTime.parse(value),
    _ => throw FormatException('Missing required DateTime "$camelKey".'),
  };
}

String? _readString(
  Map<String, dynamic> json,
  String camelKey,
  String snakeKey,
) {
  final value = json[camelKey] ?? json[snakeKey];
  return value?.toString();
}

RideStatus _readRideStatus(Object? value) {
  return switch (value?.toString().toUpperCase()) {
    'OPEN' => RideStatus.open,
    'DISPATCHING' => RideStatus.dispatching,
    'ASSIGNED' => RideStatus.assigned,
    'EN_ROUTE' => RideStatus.enRoute,
    'ARRIVED' => RideStatus.arrived,
    'IN_PROGRESS' => RideStatus.inProgress,
    'COMPLETED' => RideStatus.completed,
    'CANCELED' || 'CANCELLED' => RideStatus.canceled,
    _ => RideStatus.unknown,
  };
}
