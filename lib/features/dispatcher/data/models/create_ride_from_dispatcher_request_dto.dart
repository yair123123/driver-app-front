import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/offer.dart';


part 'create_ride_from_dispatcher_request_dto.freezed.dart';
part 'create_ride_from_dispatcher_request_dto.g.dart';

@freezed
class CreateRideFromDispatcherRequestDto
    with _$CreateRideFromDispatcherRequestDto {
  const factory CreateRideFromDispatcherRequestDto({
    @JsonKey(name: 'customerPhone') required String customerPhone,
    @JsonKey(name: 'stationId') required int stationId,
    @JsonKey(name: 'originText') String? originText,
    @JsonKey(name: 'destinationText') String? destinationText,
    @JsonKey(name: 'notesText') String? notesText,
    @JsonKey(name: 'originCity') required String originCity,
    @JsonKey(name: 'originStreet') required String originStreet,
    @JsonKey(name: 'originHouseNumber') required String originHouseNumber,
    @JsonKey(name: 'destinationCity') required String destinationCity,
    @JsonKey(name: 'destinationStreet') required String destinationStreet,
    @JsonKey(name: 'destinationHouseNumber')
    required String destinationHouseNumber,
    @JsonKey(name: 'priceAmount') double? priceAmount,
  }) = _CreateRideFromDispatcherRequestDto;

  factory CreateRideFromDispatcherRequestDto.fromJson(
      Map<String, dynamic> json,
      ) => _$CreateRideFromDispatcherRequestDtoFromJson(json);

  factory CreateRideFromDispatcherRequestDto.fromEntity(Offer entity) {
    return CreateRideFromDispatcherRequestDto(
      customerPhone: entity.passengerPhone,
      stationId: entity.stationId,
      originText: entity.origin.fullText,
      destinationText: entity.destination.fullText,
      notesText: entity.comments.isEmpty ? null : entity.comments,
      originCity: entity.origin.city,
      originStreet: entity.origin.street,
      originHouseNumber: entity.origin.houseNumber,
      destinationCity: entity.destination.city,
      destinationStreet: entity.destination.street,
      destinationHouseNumber: entity.destination.houseNumber,
      priceAmount: double.tryParse(entity.price),
    );
  }
}