import 'dart:convert';

import 'package:driver_app/core/enums/ride_operation_code.dart';

RideMessageDto rideDtoFromJson(String str) =>
    RideMessageDto.fromJson(json.decode(str) as Map<String, dynamic>);

String rideDtoToJson(RideMessageDto data) => json.encode(data.toJson());

class RideMessageDto {
  const RideMessageDto({
    required this.operationCode,
    required this.content,
    required this.error,
  });

  final RideOperationCode operationCode;
  final dynamic content;
  final String error;

  RideMessageDto copyWith({
    RideOperationCode? operationCode,
    dynamic content,
    String? error,
  }) {
    return RideMessageDto(
      operationCode: operationCode ?? this.operationCode,
      content: content ?? this.content,
      error: error ?? this.error,
    );
  }

  factory RideMessageDto.fromJson(Map<String, dynamic> json) {
    return RideMessageDto(
      operationCode: rideOperationCodeFromInt(
        (json['operation_code'] as num).toInt(),
      ),
      content: json['content'],
      error: json['error']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'operation_code': rideOperationCodeToInt(operationCode),
      'content': _encodeContent(content),
      'error': error,
    };
  }
}

dynamic _encodeContent(dynamic value) {
  if (value == null || value is String || value is num || value is bool) {
    return value;
  }
  if (value is Map) {
    return value.map(
      (key, nestedValue) =>
          MapEntry(key.toString(), _encodeContent(nestedValue)),
    );
  }
  if (value is Iterable) {
    return value.map(_encodeContent).toList(growable: false);
  }

  try {
    final dynamic dynamicValue = value;
    return _encodeContent(dynamicValue.toJson());
  } catch (_) {
    return value.toString();
  }
}
