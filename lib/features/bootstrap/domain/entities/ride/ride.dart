import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'ride.freezed.dart';
part 'ride.g.dart';

String _intToString(dynamic v) => v?.toString() ?? '';

//  Ride
@freezed
class Ride with _$Ride {
  const factory Ride({
    required String id,
    @JsonKey(name: 'station_id') required int stationId,
    required Location origin,
    required Location destination,
    @JsonKey(fromJson: _intToString) required String price,
    @JsonKey(name: "passenger_phone") required String passengerPhone,
    required String comments,
    required DateTime timestamp,
  }) = _Ride;

  factory Ride.fromJson(Map<String, dynamic> json) => _$RideFromJson(json);

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
}

//  Location
@freezed
class Location with _$Location {
  const factory Location({
    required String city,
    required String? neighborhood,
    required String? street,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}


Ride rideFromJson(String str) => Ride.fromJson(json.decode(str));
String rideToJson(Ride data) => json.encode(data.toJson());
