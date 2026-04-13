
class Address {
  const Address({
    required this.city,
    required this.neighborhood,
    required this.street,
  });

  final String city;
  final String? neighborhood;
  final String? street;

  Address copyWith({String? city, String? neighborhood, String? street}) {
    return Address(
      city: city ?? this.city,
      neighborhood: neighborhood ?? this.neighborhood,
      street: street ?? this.street,
    );
  }

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      city: json['city']?.toString() ?? '',
      neighborhood: json['neighborhood']?.toString(),
      street: json['street']?.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'city': city, 'neighborhood': neighborhood, 'street': street};
  }
}
