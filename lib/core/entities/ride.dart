// To parse this JSON data, do
//
//     final dispatchRide = dispatchRideFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ride.freezed.dart';
part 'ride.g.dart';

Ride rideFromJson(String str) => Ride.fromJson(json.decode(str));

String rideToJson(Ride data) => json.encode(data.toJson());

@freezed
class Ride with _$Ride {
  const factory Ride({
    required int id,
    required int stationId,
    required Location origin,
    required Location destination,
    required String price,
    required String passengerPhone,
    required String comments,
    required DateTime timestamp,
  }) = _Ride;
  static Ride initialRideFromLines(List<String> lines) {
    final originCity = lines.length > 0 ? lines[0] : '';
    final originNeighborhood = lines.length > 1 ? lines[1] : '';
    final destinationCity = lines.length > 2 ? lines[2] : '';
    final destinationNeighborhood = lines.length > 3 ? lines[3] : '';
    final price = lines.length > 4 ? lines[4] : '';
    final phone = lines.length > 5 ? lines[5] : '';
    final comments = lines.length > 6 ? lines.sublist(6).join('\n') : '';

    return Ride(
      id: 34,
      stationId: 34,
      origin: Location(city: originCity, neighborhood: originNeighborhood),
      destination: Location(
        city: destinationCity,
        neighborhood: destinationNeighborhood,
      ),
      price: price,
      passengerPhone: phone,
      comments: comments,
      timestamp: DateTime.now(), 
    );
  }

  factory Ride.fromJson(Map<String, dynamic> json) => _$RideFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    required String city,
    String? neighborhood,
    String? street,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
