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

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      city: json['city']?.toString() ?? '',
      neighborhood: json['neighborhood']?.toString(),
      street: json['street']?.toString(),
    );
  }

  Location copyWith({String? city, String? neighborhood, String? street}) {
    return Location(
      city: city ?? this.city,
      neighborhood: neighborhood ?? this.neighborhood,
      street: street ?? this.street,
    );
  }

  Map<String, dynamic> toJson() {
    return {'city': city, 'neighborhood': neighborhood, 'street': street};
  }
}
