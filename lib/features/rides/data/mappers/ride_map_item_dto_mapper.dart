
import '../../domain/entities/ride/ride_map_item.dart';
import '../models/ride_map_item_dto.dart';

extension RideMapItemDtoMapper on RideMapItemDto {
  RideMapItem toEntity() {
    return RideMapItem(
      id: id,
      status: status.toEntity(),
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

extension RideMapItemDtoListMapper on List<RideMapItemDto> {
  List<RideMapItem> toEntities() {
    return map((dto) => dto.toEntity()).toList(growable: false);
  }
}

extension RideStatusDtoMapper on RideStatusDto {
  RideStatus toEntity() {
    switch (this) {
      case RideStatusDto.open:
        return RideStatus.open;
      case RideStatusDto.dispatching:
        return RideStatus.dispatching;
      case RideStatusDto.assigned:
        return RideStatus.assigned;
      case RideStatusDto.enRoute:
        return RideStatus.enRoute;
      case RideStatusDto.arrived:
        return RideStatus.arrived;
      case RideStatusDto.inProgress:
        return RideStatus.inProgress;
      case RideStatusDto.completed:
        return RideStatus.completed;
      case RideStatusDto.canceled:
        return RideStatus.canceled;
    }
  }
}