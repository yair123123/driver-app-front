class ReferenceStreetModel {
  const ReferenceStreetModel({required this.name, required this.frequency});

  final String name;
  final double frequency;

  factory ReferenceStreetModel.fromJson(Map<String, dynamic> json) {
    return ReferenceStreetModel(
      name: json['name']?.toString() ?? '',
      frequency: _parseDouble(json['frequency']),
    );
  }
}

double _parseDouble(dynamic value) {
  if (value is double) {
    return value;
  }
  if (value is num) {
    return value.toDouble();
  }

  return double.tryParse(value?.toString() ?? '') ?? 0;
}
