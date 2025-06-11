import 'package:driver_app/core/enums/type_codes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ride_dto.freezed.dart';
part 'ride_dto.g.dart';

RideDto rideDtoFromJson(String str) => RideDto.fromJson(json.decode(str));

String rideDtoToJson(RideDto data) => json.encode(data.toJson());

@freezed
// 11 = פרסום נסיעה
// 12 = תן
// 13 = נמכר
class RideDto with _$RideDto {
    const factory RideDto({
        required RideTypeCode typeCode,
        required dynamic content,
        required String error,
    }) = _RideDto;

    factory RideDto.fromJson(Map<String, dynamic> json) => _$RideDtoFromJson(json);
}
