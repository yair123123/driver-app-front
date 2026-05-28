
import 'package:driver_app/core/error/failure.dart';

import '../../../rides/domain/entities/ride/ride_map_item.dart';

class DriverRidePreviewDto {
  const DriverRidePreviewDto({
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

  factory DriverRidePreviewDto.fromJson(Map<String, dynamic> json) {
    return DriverRidePreviewDto(
      id: _readRequiredInt(json, 'id'),
      status: _readRideStatus(json['status']),
      priceAmount: _readNum(json['price_amount']),
      createdAt: _readRequiredDateTime(json, 'created_at'),
      stationId: _readInt(json['station_id']) ?? 0,
      stationName: _readString(json['station_name']) ?? '',
      originLat: _readRequiredDouble(json, 'origin_lat'),
      originLon: _readRequiredDouble(json, 'origin_lon'),
      originTitle: _readString(json['origin_title']),
      originCity: _readString(json['origin_city']),
      originStreet: _readString(json['origin_street']),
      originHouseNumber: _readString(json['origin_house_number']),
      destinationLat: _readDouble(json['destination_lat']),
      destinationLon: _readDouble(json['destination_lon']),
      destinationTitle: _readString(json['destination_title']),
      destinationCity: _readString(json['destination_city']),
      destinationStreet: _readString(json['destination_street']),
      destinationHouseNumber: _readString(json['destination_house_number']),
    );
  }

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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'status': _rideStatusToJson(status),
      'price_amount': priceAmount,
      'created_at': createdAt.toIso8601String(),
      'station_id': stationId,
      'station_name': stationName,
      'origin_lat': originLat,
      'origin_lon': originLon,
      'origin_title': originTitle,
      'origin_city': originCity,
      'origin_street': originStreet,
      'origin_house_number': originHouseNumber,
      'destination_lat': destinationLat,
      'destination_lon': destinationLon,
      'destination_title': destinationTitle,
      'destination_city': destinationCity,
      'destination_street': destinationStreet,
      'destination_house_number': destinationHouseNumber,
    };
  }
}

int _readRequiredInt(Map<String, dynamic> json, String key) {
  final parsed = _readInt(json[key]);
  if (parsed == null) {
    throw FormatException('Missing required integer "$key".');
  }
  return parsed;
}

int? _readInt(Object? value) {
  return switch (value) {
    int value => value,
    num value => value.toInt(),
    String value => int.tryParse(value),
    _ => null,
  };
}

double _readRequiredDouble(Map<String, dynamic> json, String key) {
  final value = _readDouble(json[key]);
  if (value == null) {
    throw FormatException('Missing required double "$key".');
  }
  return value;
}

double? _readDouble(Object? value) {
  return switch (value) {
    int value => value.toDouble(),
    num value => value.toDouble(),
    String value => double.tryParse(value),
    _ => null,
  };
}

num? _readNum(Object? value) {
  return switch (value) {
    num value => value,
    String value => num.tryParse(value),
    _ => null,
  };
}

DateTime _readRequiredDateTime(Map<String, dynamic> json, String key) {
  final value = json[key];
  return switch (value) {
    DateTime value => value,
    String value => DateTime.parse(value),
    _ => throw ParsingFailure('Missing required DateTime "$key".'),
  };
}

String? _readString(Object? value) {
  final string = value?.toString();
  if (string == null || string.trim().isEmpty) return null;
  return string;
}

RideStatus _readRideStatus(Object? value) {
  return switch (value?.toString().toUpperCase()) {
    'OPEN' => RideStatus.open,
"SEARCHING_DRIVER" => RideStatus.open,
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

String _rideStatusToJson(RideStatus status) {
  return switch (status) {
    RideStatus.open => 'OPEN',
    RideStatus.dispatching => 'DISPATCHING',
    RideStatus.assigned => 'ASSIGNED',
    RideStatus.enRoute => 'EN_ROUTE',
    RideStatus.arrived => 'ARRIVED',
    RideStatus.inProgress => 'IN_PROGRESS',
    RideStatus.completed => 'COMPLETED',
    RideStatus.canceled => 'CANCELED',
    RideStatus.unknown => 'UNKNOWN',
  };
}
