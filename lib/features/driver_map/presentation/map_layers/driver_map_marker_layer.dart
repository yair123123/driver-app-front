import 'package:driver_app/features/driver_map/domain/entities/driver_map_item.dart';
import 'package:maplibre_gl/maplibre_gl.dart';

class DriverMapMarkerLayer {
  MapLibreMapController? _controller;
  final Map<String, Symbol> _symbolsById = {};

  Future<void> attach(MapLibreMapController controller) async {
    _controller = controller;

    // כאן נרשום icons
  }

  Future<void> syncItems(List<DriverMapItem> items) async {
    final controller = _controller;
    if (controller == null) return;

    // add/update/remove symbols
  }
}