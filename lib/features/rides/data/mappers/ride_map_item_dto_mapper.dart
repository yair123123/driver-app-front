import '../../domain/entities/ride/ride_map_item.dart';
import '../models/ride_map_item_dto.dart';

extension RideMapItemDtoMapper on RideMapItemDto {
  RideMapItem toEntity() {
    return RideMapItem(
      id: id,
      status: status,
      createdAt: createdAt,
      stationId: stationId,
      stationName: stationName,
      driverId: driverId,
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

extension RideMapItemDtoListMapper on List<RideMapItemDto> {
  List<RideMapItem> toEntities() {
    return map((dto) => dto.toEntity()).toList(growable: false);
  }
}
