import 'dart:convert';

import 'package:uuid/uuid.dart';

String _intToString(dynamic value) => value?.toString() ?? '';

class Ride {
  const Ride({
    required this.id,
    required this.stationId,
    required this.origin,
    required this.destination,
    required this.price,
    required this.passengerPhone,
    required this.comments,
    required this.timestamp,
  });

  final String id;
  final int stationId;
  final Location origin;
  final Location destination;
  final String price;
  final String passengerPhone;
  final String comments;
  final DateTime timestamp;

  Ride copyWith({
    String? id,
    int? stationId,
    Location? origin,
    Location? destination,
    String? price,
    String? passengerPhone,
    String? comments,
    DateTime? timestamp,
  }) {
    return Ride(
      id: id ?? this.id,
      stationId: stationId ?? this.stationId,
      origin: origin ?? this.origin,
      destination: destination ?? this.destination,
      price: price ?? this.price,
      passengerPhone: passengerPhone ?? this.passengerPhone,
      comments: comments ?? this.comments,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  factory Ride.fromJson(Map<String, dynamic> json) {
    return Ride(
      id: json['id']?.toString() ?? '',
      stationId: _parseInt(json['station_id'] ?? json['stationId']),
      origin: Location.fromJson(_asMap(json['origin'])),
      destination: Location.fromJson(_asMap(json['destination'])),
      price: _intToString(json['price']),
      passengerPhone:
          json['passenger_phone']?.toString() ??
          json['passengerPhone']?.toString() ??
          '',
      comments: json['comments']?.toString() ?? '',
      timestamp: _parseDateTime(json['timestamp']),
    );
  }

  static Ride initialRideFromLines(List<String> lines, int stationId) {
    return Ride(
      id: const Uuid().v4(),
      stationId: stationId,
      origin: Location(
        city: lines.isNotEmpty ? lines[0] : '',
        neighborhood: lines.length > 1 ? lines[1] : '',
        street: '',
      ),
      destination: Location(
        city: lines.length > 2 ? lines[2] : '',
        neighborhood: lines.length > 3 ? lines[3] : '',
        street: '',
      ),
      price: lines.length > 4 ? lines[4] : '',
      passengerPhone: lines.length > 5 ? lines[5] : '',
      comments: lines.length > 6 ? lines.sublist(6).join('\n') : '',
      timestamp: DateTime.now(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'station_id': stationId,
      'origin': origin.toJson(),
      'destination': destination.toJson(),
      'price': price,
      'passenger_phone': passengerPhone,
      'comments': comments,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}

class Location {
  const Location({
    required this.city,
    required this.neighborhood,
    required this.street,
  });

  final String city;
  final String? neighborhood;
  final String? street;

  Location copyWith({String? city, String? neighborhood, String? street}) {
    return Location(
      city: city ?? this.city,
      neighborhood: neighborhood ?? this.neighborhood,
      street: street ?? this.street,
    );
  }

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      city: json['city']?.toString() ?? '',
      neighborhood: json['neighborhood']?.toString(),
      street: json['street']?.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'city': city, 'neighborhood': neighborhood, 'street': street};
  }
}

Ride rideFromJson(String str) => Ride.fromJson(json.decode(str));

String rideToJson(Ride data) => json.encode(data.toJson());

int _parseInt(dynamic value) {
  if (value is int) {
    return value;
  }
  if (value is num) {
    return value.toInt();
  }

  return int.tryParse(value?.toString() ?? '') ?? 0;
}

DateTime _parseDateTime(dynamic value) {
  if (value is DateTime) {
    return value;
  }

  return DateTime.tryParse(value?.toString() ?? '') ?? DateTime.now();
}

Map<String, dynamic> _asMap(dynamic value) {
  if (value is Map<String, dynamic>) {
    return value;
  }
  if (value is Map) {
    return Map<String, dynamic>.from(value);
  }

  return <String, dynamic>{};
}
