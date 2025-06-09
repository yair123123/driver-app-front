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

    factory Ride.fromJson(Map<String, dynamic> json) => _$RideFromJson(json);
}

@freezed
class Location with _$Location {
    const factory Location({
        required String city,
        required String neighborhood,
        required String street,
    }) = _Location;

    factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}
