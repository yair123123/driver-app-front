import 'package:driver_app/core/enums/ride_operation_code.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ride_message_dto.freezed.dart';
part 'ride_message_dto.g.dart';

RideMessageDto rideDtoFromJson(String str) => RideMessageDto.fromJson(json.decode(str));

String rideDtoToJson(RideMessageDto data) => json.encode(data.toJson());

@freezed
class RideMessageDto with _$RideMessageDto {
    const factory RideMessageDto({
        @JsonKey(name: 'operation_code',fromJson: rideOperationCodeFromInt, toJson: rideOperationCodeToInt)
        required RideOperationCode operationCode,
        required dynamic content,
        required String error,
    }) = _RideMessageDto;

    factory RideMessageDto.fromJson(Map<String, dynamic> json) => _$RideMessageDtoFromJson(json);
}
