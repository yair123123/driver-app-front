import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_ride_response_dto.freezed.dart';
part 'create_ride_response_dto.g.dart';

@freezed
class CreateRideResponseDto with _$CreateRideResponseDto {
  const factory CreateRideResponseDto({
    required int id,
    required String status,
  }) = _CreateRideResponseDto;

  factory CreateRideResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateRideResponseDtoFromJson(json);
}