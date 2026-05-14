import 'driver_map_assets.dart';

class DriverMapLayerIds {
  const DriverMapLayerIds._();

  static const itemsSource = 'driver_map_items_source';
  static const itemsLayer = 'driver_map_items_layer';

  static const selfDriverIcon = 'driver_map_self_driver_icon';
  static const nearbyDriverIcon = 'driver_map_nearby_driver_icon';
  static const openRideIcon = 'driver_map_open_ride_icon';
  static const assignedRideIcon = 'driver_map_assigned_ride_icon';
  static const iconAssets = <String, String>{
    DriverMapLayerIds.selfDriverIcon: DriverMapAssets.selfDriver,
    DriverMapLayerIds.nearbyDriverIcon: DriverMapAssets.nearbyDriver,
    DriverMapLayerIds.openRideIcon: DriverMapAssets.openRide,
    DriverMapLayerIds.assignedRideIcon: DriverMapAssets.assignedRide,
  };
}