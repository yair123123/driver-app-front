import 'package:driver_app/features/driver_map/domain/entities/driver_map_item.dart';
import 'package:driver_app/features/driver_map/domain/entities/driver_map_item_type.dart';
import 'package:driver_app/features/driver_rides/domain/entities/driver_ride_preview.dart';

extension DriverRidePreviewMapItemMapper on DriverRidePreview {
  DriverMapItem toOpenRideMapItem() {
    return DriverMapItem(
      id: 'ride_$id',
      latitude: originLat,
      longitude: originLon,
      type: DriverMapItemType.openRide,
      title: originTitle,
      metadata: {'rideId': id},
    );
  }
}
