class PriceTemplate {
  const PriceTemplate({required this.routeKey, required this.values});

  static const String defaultRouteKey = 'default';

  final String routeKey;
  final List<int> values;

  bool get isDefault => routeKey == defaultRouteKey;

  static String routeKeyFor({
    required String originCity,
    required String destinationCity,
  }) {
    return '${originCity.trim()}-${destinationCity.trim()}';
  }
}
