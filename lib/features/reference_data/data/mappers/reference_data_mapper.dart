import 'package:driver_app/features/reference_data/data/models/reference_city_model.dart';
import 'package:driver_app/features/reference_data/data/models/reference_data_bundle_model.dart';
import 'package:driver_app/features/reference_data/data/models/reference_neighborhood_model.dart';
import 'package:driver_app/features/reference_data/data/models/reference_street_model.dart';
import 'package:driver_app/features/reference_data/domain/entities/additional_message_template.dart';
import 'package:driver_app/features/reference_data/domain/entities/price_template.dart';
import 'package:driver_app/features/reference_data/domain/entities/reference_city.dart';
import 'package:driver_app/features/reference_data/domain/entities/reference_data_bundle.dart';
import 'package:driver_app/features/reference_data/domain/entities/reference_neighborhood.dart';
import 'package:driver_app/features/reference_data/domain/entities/reference_street.dart';

extension ReferenceStreetModelMapper on ReferenceStreetModel {
  ReferenceStreet toEntity() {
    return ReferenceStreet(name: name, frequency: frequency);
  }
}

extension ReferenceNeighborhoodModelMapper on ReferenceNeighborhoodModel {
  ReferenceNeighborhood toEntity() {
    return ReferenceNeighborhood(
      name: name,
      frequency: frequency,
      streets: streets
          .map((street) => street.toEntity())
          .toList(growable: false),
    );
  }
}

extension ReferenceCityModelMapper on ReferenceCityModel {
  ReferenceCity toEntity() {
    return ReferenceCity(
      name: name,
      frequency: frequency,
      neighborhoods: neighborhoods
          .map((neighborhood) => neighborhood.toEntity())
          .toList(growable: false),
    );
  }
}

extension ReferenceDataBundleModelMapper on ReferenceDataBundleModel {
  ReferenceDataBundle toEntity() {
    return ReferenceDataBundle(
      cities: cities.map((city) => city.toEntity()).toList(growable: false),
      priceTemplates: prices.entries
          .map(
            (entry) => PriceTemplate(
              routeKey: entry.key,
              values: List<int>.unmodifiable(entry.value),
            ),
          )
          .toList(growable: false),
      additionalMessageTemplates: comments
          .map((comment) => AdditionalMessageTemplate(value: comment))
          .toList(growable: false),
    );
  }
}
