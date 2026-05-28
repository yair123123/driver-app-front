import 'package:driver_app/features/driver_rides/data/dtos/driver_ride_preview_dto.dart';
import 'package:driver_app/features/driver_rides/domain/entities/driver_ride_preview.dart';

extension DriverRidePreviewDtoMapper on DriverRidePreviewDto {
  DriverRidePreview toEntity() {
    return DriverRidePreview(
      id: id,
      status: status,
      priceAmount: priceAmount,
      createdAt: createdAt,
      stationId: stationId,
      stationName: stationName,
      originLat: originLat,
      originLon: originLon,
      originTitle: originTitle,
      originCity: originCity,
      originStreet: originStreet,
      originHouseNumber: originHouseNumber,
      destinationLat: destinationLat,
      destinationLon: destinationLon,
      destinationTitle: destinationTitle,
      destinationCity: destinationCity,
      destinationStreet: destinationStreet,
      destinationHouseNumber: destinationHouseNumber,
    );
  }
}

extension DriverRidePreviewDtoListMapper on List<DriverRidePreviewDto> {
  List<DriverRidePreview> toEntities() {
    return map((dto) => dto.toEntity()).toList(growable: false);
  }
}
