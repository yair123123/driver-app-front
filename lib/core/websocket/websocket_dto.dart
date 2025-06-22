// To parse this JSON data, do
//
//     final webSocketDto = webSocketDtoFromJson(jsonString);

import 'package:driver_app/core/enums/websocket_typecode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'websocket_dto.freezed.dart';
part 'websocket_dto.g.dart';

WebSocketDto webSocketDtoFromJson(String str) => WebSocketDto.fromJson(json.decode(str));

String webSocketDtoToJson(WebSocketDto data) => json.encode(data.toJson());


@freezed
class WebSocketDto with _$WebSocketDto {
    const factory WebSocketDto({
        required dynamic content,
        required String error,
        @JsonKey(name: 'type_code',fromJson: webSocketTypeCodeFromInt, toJson: webSocketTypeCodeToInt)
        required WebSocketTypeCode typeCode ,
    }) = _WebSocketDto;

    factory WebSocketDto.fromJson(Map<String, dynamic> json) => _$WebSocketDtoFromJson(json);
}
