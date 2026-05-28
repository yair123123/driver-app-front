import 'package:driver_app/features/dispatch_realtime/data/dtos/ride_action_result_dto.dart';
import 'package:driver_app/features/dispatch_realtime/domain/constants/dispatch_realtime_operation_codes.dart';
import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_event.dart';
import 'package:driver_app/features/dispatch_realtime/domain/entities/ride_action_result.dart';
import 'package:driver_app/features/realtime/domain/entities/socket_envelope.dart';
import 'package:driver_app/features/rides/data/mappers/ride_map_item_dto_mapper.dart';
import 'package:driver_app/features/rides/data/models/ride_map_item_dto.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride_map_item.dart';

abstract final class DispatchRealtimeEventMapper {
  static DispatchRealtimeEvent fromEnvelope(SocketEnvelope envelope) {
    final content = envelope.content;

    try {
      switch (envelope.operationCode) {
        case DispatchRealtimeOperationCodes.rideCreated:
          return RideCreatedRealtimeEvent(
            ride: _requiredRide(content, envelope.operationCode),
          );

        case DispatchRealtimeOperationCodes.rideUpdated:
          return RideUpdatedRealtimeEvent(
            ride: _requiredRide(content, envelope.operationCode),
          );

        case DispatchRealtimeOperationCodes.rideCancelled:
          return RideCancelledRealtimeEvent(
            rideId: _requiredInt(content, 'rideId', 'ride_id'),
          );

        case DispatchRealtimeOperationCodes.rideAssigned:
          return RideAssignedRealtimeEvent(
            rideId: _requiredInt(content, 'rideId', 'ride_id'),
            driverId: _readInt(content, 'driverId', 'driver_id'),
          );

        case DispatchRealtimeOperationCodes.rideOfferReceived:
          return RideOfferReceivedRealtimeEvent(
            rideId: _requiredInt(content, 'rideId', 'ride_id'),
            roundId: _readString(content, 'roundId', 'round_id'),
            expiresAt: _readDateTime(content, 'expiresAt', 'expires_at'),
            ride: _readRide(content?['ride']),
          );

        case DispatchRealtimeOperationCodes.rideOfferExpired:
          return RideOfferExpiredRealtimeEvent(
            rideId: _requiredInt(content, 'rideId', 'ride_id'),
            roundId: _readString(content, 'roundId', 'round_id'),
          );

        case DispatchRealtimeOperationCodes.rideOfferCancelled:
          return RideOfferCancelledRealtimeEvent(
            rideId: _requiredInt(content, 'rideId', 'ride_id'),
            roundId: _readString(content, 'roundId', 'round_id'),
          );

        case DispatchRealtimeOperationCodes.rideActionResult:
          if (content == null) {
            return InvalidDispatchRealtimeEvent(
              operationCode: envelope.operationCode,
              error: 'Missing content',
              content: content,
            );
          }

          return RideActionResultRealtimeEvent(
            result: RideActionResultDto.fromJson(content).toEntity(),
          );

        default:
          return UnknownDispatchRealtimeEvent(
            operationCode: envelope.operationCode,
            content: content,
          );
      }
    } catch (error) {
      return InvalidDispatchRealtimeEvent(
        operationCode: envelope.operationCode,
        error: error,
        content: content,
      );
    }
  }

  static RideMapItem _requiredRide(
    Map<String, dynamic>? content,
    int operationCode,
  ) {
    if (content == null) {
      throw FormatException('Missing content for operation $operationCode.');
    }
    return RideMapItemDto.fromJson(content).toEntity();
  }

  static RideMapItem? _readRide(Object? value) {
    if (value == null) {
      return null;
    }
    if (value is! Map<String, dynamic>) {
      throw const FormatException('Expected ride to be a JSON object.');
    }
    return RideMapItemDto.fromJson(value).toEntity();
  }

  static int _requiredInt(
    Map<String, dynamic>? content,
    String camelKey,
    String snakeKey,
  ) {
    final value = _readInt(content, camelKey, snakeKey);
    if (value == null) {
      throw FormatException('Missing required integer "$camelKey".');
    }
    return value;
  }

  static int? _readInt(
    Map<String, dynamic>? content,
    String camelKey,
    String snakeKey,
  ) {
    final value = content?[camelKey] ?? content?[snakeKey];
    return switch (value) {
      int value => value,
      num value => value.toInt(),
      String value => int.tryParse(value),
      _ => null,
    };
  }

  static String? _readString(
    Map<String, dynamic>? content,
    String camelKey,
    String snakeKey,
  ) {
    final value = content?[camelKey] ?? content?[snakeKey];
    return value?.toString();
  }

  static DateTime? _readDateTime(
    Map<String, dynamic>? content,
    String camelKey,
    String snakeKey,
  ) {
    final value = content?[camelKey] ?? content?[snakeKey];
    return switch (value) {
      DateTime value => value,
      String value when value.isNotEmpty => DateTime.parse(value),
      _ => null,
    };
  }
}

extension RideActionResultDtoMapper on RideActionResultDto {
  RideActionResult toEntity() {
    return RideActionResult(
      rideId: rideId,
      roundId: roundId,
      success: success,
      code: code,
      message: message,
    );
  }
}
