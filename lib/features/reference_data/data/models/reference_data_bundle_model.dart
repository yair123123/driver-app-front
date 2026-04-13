import 'package:driver_app/features/reference_data/data/models/reference_city_model.dart';

class ReferenceDataBundleModel {
  const ReferenceDataBundleModel({
    required this.cities,
    required this.prices,
    required this.comments,
  });

  final List<ReferenceCityModel> cities;
  final Map<String, List<int>> prices;
  final List<String> comments;

  factory ReferenceDataBundleModel.fromJson(Map<String, dynamic> json) {
    return ReferenceDataBundleModel(
      cities: (json['cities'] as List<dynamic>? ?? const [])
          .map((city) => ReferenceCityModel.fromJson(_asMap(city)))
          .toList(growable: false),
      prices: _parsePrices(json['prices']),
      comments: (json['comments'] as List<dynamic>? ?? const [])
          .map((comment) => comment.toString())
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

Map<String, List<int>> _parsePrices(dynamic rawPrices) {
  if (rawPrices is! Map) {
    return const <String, List<int>>{};
  }

  return Map<String, dynamic>.from(rawPrices).map((key, value) {
    final items = value is List ? value : const <dynamic>[];
    return MapEntry(
      key,
      items
          .map((item) => int.tryParse(item.toString()) ?? 0)
          .toList(growable: false),
    );
  });
}
