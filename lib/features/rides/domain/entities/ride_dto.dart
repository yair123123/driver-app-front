import 'package:driver_app/core/enums/ride_operation_code.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ride_dto.freezed.dart';
part 'ride_dto.g.dart';

RideDto rideDtoFromJson(String str) => RideDto.fromJson(json.decode(str));

String rideDtoToJson(RideDto data) => json.encode(data.toJson());

@freezed
class RideDto with _$RideDto {
    const factory RideDto({
        @JsonKey(fromJson: rideOperationCodeFromInt, toJson: rideOperationCodeToInt)
        required RideOperationCode operation_code,
        required dynamic content,
        required String error,
    }) = _RideDto;

    factory RideDto.fromJson(Map<String, dynamic> json) => _$RideDtoFromJson(json);
}
