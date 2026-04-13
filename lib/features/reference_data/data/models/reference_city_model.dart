import 'package:driver_app/features/reference_data/data/models/reference_neighborhood_model.dart';

class ReferenceCityModel {
  const ReferenceCityModel({
    required this.name,
    required this.frequency,
    required this.neighborhoods,
  });

  final String name;
  final double frequency;
  final List<ReferenceNeighborhoodModel> neighborhoods;

  factory ReferenceCityModel.fromJson(Map<String, dynamic> json) {
    return ReferenceCityModel(
      name: json['name']?.toString() ?? '',
      frequency: _parseDouble(json['frequency']),
      neighborhoods: (json['neighborhoods'] as List<dynamic>? ?? const [])
          .map(
            (neighborhood) =>
                ReferenceNeighborhoodModel.fromJson(_asMap(neighborhood)),
          )
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
