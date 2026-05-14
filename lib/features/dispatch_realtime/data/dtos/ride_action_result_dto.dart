class RideActionResultDto {
  const RideActionResultDto({
    required this.success,
    this.rideId,
    this.roundId,
    this.code,
    this.message,
  });

  factory RideActionResultDto.fromJson(Map<String, dynamic> json) {
    return RideActionResultDto(
      rideId: _readInt(json, 'rideId', 'ride_id'),
      roundId: _readString(json, 'roundId', 'round_id'),
      success: json['success'] as bool? ?? false,
      code: json['code'] as String?,
      message: json['message'] as String?,
    );
  }

  final int? rideId;
  final String? roundId;
  final bool success;
  final String? code;
  final String? message;
}

int? _readInt(Map<String, dynamic> json, String camelKey, String snakeKey) {
  final value = json[camelKey] ?? json[snakeKey];
  return switch (value) {
    int value => value,
    num value => value.toInt(),
    String value => int.tryParse(value),
    _ => null,
  };
}

String? _readString(
  Map<String, dynamic> json,
  String camelKey,
  String snakeKey,
) {
  final value = json[camelKey] ?? json[snakeKey];
  return value?.toString();
}
