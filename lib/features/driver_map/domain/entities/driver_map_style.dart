import 'package:driver_app/features/driver_map/domain/entities/driver_map_item_type.dart';

class DriverMapStyle {
  final String iconName;
  final double size;
  final int zIndex;

  const DriverMapStyle({
    required this.iconName,
    required this.size,
    required this.zIndex,
  });
}

DriverMapStyle styleForMapItem(DriverMapItemType type) {
  switch (type) {
    case DriverMapItemType.selfDriver:
      return const DriverMapStyle(
        iconName: 'self_driver',
        size: 1.2,
        zIndex: 100,
      );

    case DriverMapItemType.otherDriver:
      return const DriverMapStyle(
        iconName: 'other_driver',
        size: 0.7,
        zIndex: 20,
      );

    case DriverMapItemType.activeRide:
      return const DriverMapStyle(
        iconName: 'active_ride',
        size: 1.0,
        zIndex: 50,
      );
  }
}