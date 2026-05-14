import 'package:driver_app/features/rides/domain/constants/ride_operation_codes.dart';

class RideOutputActionDto {
  const RideOutputActionDto({
    required this.operationCode,
    required this.content,
    required this.error,
  });

  final RideOperationCodes operationCode;
  final dynamic content;
  final String error;

  RideOutputActionDto copyWith({
    RideOperationCodes? operationCode,
    dynamic content,
    String? error,
  }) {
    return RideOutputActionDto(
      operationCode: operationCode ?? this.operationCode,
      content: content ?? this.content,
      error: error ?? this.error,
    );
  }
}
