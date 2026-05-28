import 'package:driver_app/core/error/failure.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride_map_item.dart';

class RideMapItemDto {
  const RideMapItemDto({
    required this.id,
    required this.status,
    required this.createdAt,
    required this.originLat,
    required this.originLon,
    this.stationId,
    this.stationName,
    this.driverId,
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

  factory RideMapItemDto.fromJson(Map<String, dynamic> json) {
    return RideMapItemDto(
      id: _readRequiredInt(json, JsonRideKeys.id),
      status: RideStatus.fromApi(_read(json, JsonRideKeys.status)),
      createdAt: _readRequiredDateTime(json, JsonRideKeys.createdAt),
      stationId: _readInt(json, JsonRideKeys.stationId),
      stationName: _readString(json, JsonRideKeys.stationName),
      driverId: _readInt(json, JsonRideKeys.driverId),
      priceAmount: _readNum(json, JsonRideKeys.priceAmount),
      originLat: _readRequiredDouble(json, JsonRideKeys.originLat),
      originLon: _readRequiredDouble(json, JsonRideKeys.originLon),
      originTitle: _readString(json, JsonRideKeys.originTitle),
      originCity: _readString(json, JsonRideKeys.originCity),
      originStreet: _readString(json, JsonRideKeys.originStreet),
      originHouseNumber: _readString(json, JsonRideKeys.originHouseNumber),
      destinationLat: _readDouble(json, JsonRideKeys.destinationLat),
      destinationLon: _readDouble(json, JsonRideKeys.destinationLon),
      destinationTitle: _readString(json, JsonRideKeys.destinationTitle),
      destinationCity: _readString(json, JsonRideKeys.destinationCity),
      destinationStreet: _readString(json, JsonRideKeys.destinationStreet),
      destinationHouseNumber: _readString(
        json,
        JsonRideKeys.destinationHouseNumber,
      ),
    );
  }

  final int id;
  final RideStatus status;
  final DateTime createdAt;
  final int? stationId;
  final String? stationName;
  final int? driverId;
  final num? priceAmount;
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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'status': status.apiValue,
      'created_at': createdAt.toIso8601String(),
      'station_id': stationId,
      'station_name': stationName,
      'driver_id': driverId,
      'price_amount': priceAmount,
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

int _readRequiredInt(Map<String, dynamic> json, JsonRideKey key) {
  final parsed = _readInt(json, key);
  if (parsed == null) {
    throw FormatException('Missing required integer "${key.snakeName}".');
  }
  return parsed;
}

int? _readInt(Map<String, dynamic> json, JsonRideKey key) {
  final value = _read(json, key);
  return switch (value) {
    int value => value,
    num value => value.toInt(),
    String value => int.tryParse(value),
    _ => null,
  };
}

double _readRequiredDouble(Map<String, dynamic> json, JsonRideKey key) {
  final value = _readDouble(json, key);
  if (value == null) {
    throw FormatException('Missing required double "${key.snakeName}".');
  }
  return value;
}

double? _readDouble(Map<String, dynamic> json, JsonRideKey key) {
  final value = _read(json, key);
  return switch (value) {
    int value => value.toDouble(),
    num value => value.toDouble(),
    String value => double.tryParse(value),
    _ => null,
  };
}

num? _readNum(Map<String, dynamic> json, JsonRideKey key) {
  final value = _read(json, key);
  return switch (value) {
    num value => value,
    String value => num.tryParse(value),
    _ => null,
  };
}

DateTime _readRequiredDateTime(Map<String, dynamic> json, JsonRideKey key) {
  final value = _read(json, key);
  return switch (value) {
    DateTime value => value,
    String value when value.isNotEmpty => DateTime.parse(value),
    _ => throw ParsingFailure('Missing required DateTime "${key.snakeName}".'),
  };
}

String? _readString(Map<String, dynamic> json, JsonRideKey key) {
  final string = _read(json, key)?.toString();
  if (string == null || string.trim().isEmpty) return null;
  return string;
}

Object? _read(Map<String, dynamic> json, JsonRideKey key) {
  return json[key.camelName] ?? json[key.snakeName];
}

class JsonRideKey {
  const JsonRideKey({required this.camelName, required this.snakeName});

  final String camelName;
  final String snakeName;
}

abstract final class JsonRideKeys {
  static const id = JsonRideKey(camelName: 'id', snakeName: 'id');
  static const status = JsonRideKey(camelName: 'status', snakeName: 'status');
  static const createdAt = JsonRideKey(
    camelName: 'createdAt',
    snakeName: 'created_at',
  );
  static const stationId = JsonRideKey(
    camelName: 'stationId',
    snakeName: 'station_id',
  );
  static const stationName = JsonRideKey(
    camelName: 'stationName',
    snakeName: 'station_name',
  );
  static const driverId = JsonRideKey(
    camelName: 'driverId',
    snakeName: 'driver_id',
  );
  static const priceAmount = JsonRideKey(
    camelName: 'priceAmount',
    snakeName: 'price_amount',
  );
  static const originLat = JsonRideKey(
    camelName: 'originLat',
    snakeName: 'origin_lat',
  );
  static const originLon = JsonRideKey(
    camelName: 'originLon',
    snakeName: 'origin_lon',
  );
  static const originTitle = JsonRideKey(
    camelName: 'originTitle',
    snakeName: 'origin_title',
  );
  static const originCity = JsonRideKey(
    camelName: 'originCity',
    snakeName: 'origin_city',
  );
  static const originStreet = JsonRideKey(
    camelName: 'originStreet',
    snakeName: 'origin_street',
  );
  static const originHouseNumber = JsonRideKey(
    camelName: 'originHouseNumber',
    snakeName: 'origin_house_number',
  );
  static const destinationLat = JsonRideKey(
    camelName: 'destinationLat',
    snakeName: 'destination_lat',
  );
  static const destinationLon = JsonRideKey(
    camelName: 'destinationLon',
    snakeName: 'destination_lon',
  );
  static const destinationTitle = JsonRideKey(
    camelName: 'destinationTitle',
    snakeName: 'destination_title',
  );
  static const destinationCity = JsonRideKey(
    camelName: 'destinationCity',
    snakeName: 'destination_city',
  );
  static const destinationStreet = JsonRideKey(
    camelName: 'destinationStreet',
    snakeName: 'destination_street',
  );
  static const destinationHouseNumber = JsonRideKey(
    camelName: 'destinationHouseNumber',
    snakeName: 'destination_house_number',
  );
}
