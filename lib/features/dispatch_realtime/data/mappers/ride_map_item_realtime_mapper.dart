import 'package:driver_app/features/dispatch_realtime/data/dtos/ride_map_item_realtime_dto.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride_map_item.dart';

extension RideMapItemRealtimeDtoMapper on RideMapItemRealtimeDto {
  RideMapItem toEntity() {
    return RideMapItem(
      id: id,
      status: status,
      createdAt: createdAt,
      priceAmount: priceAmount,
      originLat: originLat,
      originLon: originLon,
      originTitle: originTitle,
      destinationLat: destinationLat,
      destinationLon: destinationLon,
      destinationTitle: destinationTitle,
      originCity: originCity,
      originStreet: originStreet,
      originHouseNumber: originHouseNumber,
      destinationCity: destinationCity,
      destinationStreet: destinationStreet,
      destinationHouseNumber: destinationHouseNumber,
    );
  }
}
