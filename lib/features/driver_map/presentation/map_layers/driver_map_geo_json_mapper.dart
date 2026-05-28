import 'package:driver_app/features/driver_map/domain/entities/driver_map_item.dart';
import 'package:driver_app/features/driver_map/domain/entities/driver_map_item_type.dart';
import 'package:driver_app/features/driver_map/presentation/map_layers/driver_map_layer_ids.dart';

class DriverMapGeoJsonMapper {
  const DriverMapGeoJsonMapper._();

  static Map<String, dynamic> itemsToFeatureCollection(
    List<DriverMapItem> items,
  ) {
    return {
      'type': 'FeatureCollection',
      'features': items.map(_itemToFeature).toList(growable: false),
    };
  }

  static Map<String, dynamic> _itemToFeature(DriverMapItem item) {
    return {
      'type': 'Feature',
      'id': item.id,
      'geometry': {
        'type': 'Point',

        // GeoJSON = [longitude, latitude]
        'coordinates': [item.longitude, item.latitude],
      },
      'properties': {
        'id': item.id,
        'type': item.type.name,
        'icon': _iconForType(item.type),
        'heading': item.heading ?? 0.0,
        if (item.title != null) 'title': item.title,
        ...item.metadata,
      },
    };
  }

  static String _iconForType(DriverMapItemType type) {
    switch (type) {
      case DriverMapItemType.selfDriver:
        return DriverMapLayerIds.selfDriverIcon;

      case DriverMapItemType.nearbyDriver:
        return DriverMapLayerIds.nearbyDriverIcon;

      case DriverMapItemType.openRide:
        return DriverMapLayerIds.openRideIcon;

      case DriverMapItemType.assignedRide:
        return DriverMapLayerIds.assignedRideIcon;
    }
  }
}
