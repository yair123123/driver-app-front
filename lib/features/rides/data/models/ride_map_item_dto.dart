import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_map_item_dto.freezed.dart';
part 'ride_map_item_dto.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
class RideMapItemDto with _$RideMapItemDto {
  const factory RideMapItemDto({
    required int id,
    required RideStatusDto status,
    required DateTime createdAt,

    double? priceAmount,

    required double originLat,
    required double originLon,
    String? originTitle,

    double? destinationLat,
    double? destinationLon,
    String? destinationTitle,

    String? originCity,
    String? originStreet,
    String? originHouseNumber,

    String? destinationCity,
    String? destinationStreet,
    String? destinationHouseNumber,
  }) = _RideMapItemDto;

  factory RideMapItemDto.fromJson(Map<String, dynamic> json) =>
      _$RideMapItemDtoFromJson(json);
}

enum RideStatusDto {
  @JsonValue('OPEN')
  open,

  @JsonValue('DISPATCHING')
  dispatching,

  @JsonValue('ASSIGNED')
  assigned,

  @JsonValue('EN_ROUTE')
  enRoute,

  @JsonValue('ARRIVED')
  arrived,

  @JsonValue('IN_PROGRESS')
  inProgress,

  @JsonValue('COMPLETED')
  completed,

  @JsonValue('CANCELED')
  canceled,
}