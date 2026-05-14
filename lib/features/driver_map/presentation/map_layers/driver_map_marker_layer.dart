import 'package:driver_app/features/driver_map/domain/entities/driver_map_item.dart';
import 'package:driver_app/features/driver_map/presentation/map_layers/driver_map_geo_json_mapper.dart';
import 'package:driver_app/features/driver_map/presentation/map_layers/driver_map_layer_ids.dart';
import 'package:maplibre_gl/maplibre_gl.dart';

import '../../../../core/media/media_utils.dart';

class DriverMapMarkerLayer {
  MapLibreMapController? _controller;
  bool _attached = false;

  Future<void> attach(MapLibreMapController controller) async {
    if (_attached) return;

    _controller = controller;

    await _addImages(controller);
    await _addSource(controller);
    await _addLayer(controller);

    _attached = true;
  }

  Future<void> syncItems(List<DriverMapItem> items) async {
    if (!_attached) return;

    final controller = _controller;
    if (controller == null) return;

    final geoJson = DriverMapGeoJsonMapper.itemsToFeatureCollection(items);

    await controller.setGeoJsonSource(DriverMapLayerIds.itemsSource, geoJson);
  }

  Future<void> _addImages(MapLibreMapController controller) async {
    for (final entry in DriverMapLayerIds.iconAssets.entries) {
      await controller.addImage(
        entry.key,
        await getBytesFromAsset(entry.value),
      );
    }
  }

  Future<void> _addSource(MapLibreMapController controller) async {
    const emptyGeoJson = {
      'type': 'FeatureCollection',
      'features': <Map<String, dynamic>>[],
    };

    await controller.addSource(
      DriverMapLayerIds.itemsSource,
      GeojsonSourceProperties(data: emptyGeoJson),
    );
  }

  Future<void> _addLayer(MapLibreMapController controller) async {
    await controller.addSymbolLayer(
      DriverMapLayerIds.itemsSource,
      DriverMapLayerIds.itemsLayer,
      const SymbolLayerProperties(
        iconImage: ['get', 'icon'],
        iconSize: 0.2,
        iconAllowOverlap: true,
        iconIgnorePlacement: true,
        iconRotate: ['get', 'heading'],
        iconRotationAlignment: 'map',
      ),
    );
  }
}
