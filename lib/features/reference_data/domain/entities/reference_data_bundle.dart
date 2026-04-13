import 'package:driver_app/features/reference_data/domain/entities/additional_message_template.dart';
import 'package:driver_app/features/reference_data/domain/entities/price_template.dart';
import 'package:driver_app/features/reference_data/domain/entities/reference_city.dart';

class ReferenceDataBundle {
  const ReferenceDataBundle({
    required this.cities,
    required this.priceTemplates,
    required this.additionalMessageTemplates,
  });

  final List<ReferenceCity> cities;
  final List<PriceTemplate> priceTemplates;
  final List<AdditionalMessageTemplate> additionalMessageTemplates;

  List<int> priceOptionsFor({
    required String originCity,
    required String destinationCity,
  }) {
    final routeKey = PriceTemplate.routeKeyFor(
      originCity: originCity,
      destinationCity: destinationCity,
    );
    final lookup = {
      for (final template in priceTemplates) template.routeKey: template.values,
    };

    return lookup[routeKey] ??
        lookup[PriceTemplate.defaultRouteKey] ??
        const [];
  }
}
