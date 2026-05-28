import 'package:driver_app/features/driver_map/domain/entities/driver_map_item.dart';
import 'package:driver_app/features/driver_map/domain/entities/driver_map_item_type.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride_map_item.dart';

extension RideMapItemDriverMapMapper on RideMapItem {
  DriverMapItem toDriverMapItem() {
    return DriverMapItem(
      id: 'ride_$id',
      latitude: originLat,
      longitude: originLon,
      type: _mapItemTypeForStatus(status),
      title: displayOriginTitle,
      metadata: {
        DriverMapRideMetadataKeys.rideId: id,
        DriverMapRideMetadataKeys.status: status.apiValue,
        if (stationId != null) DriverMapRideMetadataKeys.stationId: stationId,
        if (stationName != null)
          DriverMapRideMetadataKeys.stationName: stationName,
        if (displayPrice != null) DriverMapRideMetadataKeys.price: displayPrice,
      },
    );
  }

  DriverMapItemType _mapItemTypeForStatus(RideStatus status) {
    return switch (status) {
      RideStatus.open || RideStatus.dispatching => DriverMapItemType.openRide,
      RideStatus.assigned ||
      RideStatus.enRoute ||
      RideStatus.arrived ||
      RideStatus.inProgress => DriverMapItemType.assignedRide,
      RideStatus.completed ||
      RideStatus.canceled ||
      RideStatus.unknown => DriverMapItemType.openRide,
    };
  }
}

abstract final class DriverMapRideMetadataKeys {
  static const rideId = 'rideId';
  static const status = 'status';
  static const stationId = 'stationId';
  static const stationName = 'stationName';
  static const price = 'price';
}
