import 'package:driver_app/features/reference_data/data/models/reference_street_model.dart';

class ReferenceNeighborhoodModel {
  const ReferenceNeighborhoodModel({
    required this.name,
    required this.frequency,
    required this.streets,
  });

  final String name;
  final double frequency;
  final List<ReferenceStreetModel> streets;

  factory ReferenceNeighborhoodModel.fromJson(Map<String, dynamic> json) {
    return ReferenceNeighborhoodModel(
      name: json['name']?.toString() ?? '',
      frequency: _parseDouble(json['frequency']),
      streets: (json['streets'] as List<dynamic>? ?? const [])
          .map((street) => ReferenceStreetModel.fromJson(_asMap(street)))
          .toList(growable: false),
    );
  }
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

double _parseDouble(dynamic value) {
  if (value is double) {
    return value;
  }
  if (value is num) {
    return value.toDouble();
  }

  return double.tryParse(value?.toString() ?? '') ?? 0;
}
