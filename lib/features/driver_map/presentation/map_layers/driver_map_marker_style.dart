import 'package:driver_app/features/driver_map/domain/entities/driver_map_item_type.dart';
import 'driver_map_marker_assets.dart';

class DriverMapMarkerStyle {
  final String iconId;
  final double iconSize;
  final int zIndex;

  const DriverMapMarkerStyle({
    required this.iconId,
    required this.iconSize,
    required this.zIndex,
  });
}

DriverMapMarkerStyle markerStyleFor(DriverMapItemType type) {
  switch (type) {
    case DriverMapItemType.selfDriver:
      return const DriverMapMarkerStyle(
        iconId: DriverMapMarkerAssets.selfDriver,
        iconSize: 1.1,
        zIndex: 100,
      );

    case DriverMapItemType.otherDriver:
      return const DriverMapMarkerStyle(
        iconId: DriverMapMarkerAssets.otherDriver,
        iconSize: 0.7,
        zIndex: 20,
      );

    case DriverMapItemType.activeRide:
      return const DriverMapMarkerStyle(
        iconId: DriverMapMarkerAssets.activeRide,
        iconSize: 1.0,
        zIndex: 50,
      );
  }
}