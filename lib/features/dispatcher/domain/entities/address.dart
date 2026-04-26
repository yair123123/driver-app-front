
class Address {
  const Address({
    required this.city,
    required this.street,
    required this.houseNumber,
    required this.fullText,
  });

  final String city;
  final String street;
  final String houseNumber;
  final String fullText;


  Address copyWith({String? city, String? neighborhood, String? street, String? houseNumber,String? fullText}) {
    return Address(
      city: city ?? this.city,
      street: street ?? this.street,
      houseNumber: houseNumber ?? this.houseNumber,
      fullText: fullText ?? this.fullText,
    );
  }


}
