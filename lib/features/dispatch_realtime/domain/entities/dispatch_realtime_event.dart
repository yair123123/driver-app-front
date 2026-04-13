import 'package:driver_app/core/enums/ride_operation_code.dart';
import 'package:driver_app/core/ws/protocol/ws_envelope.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride.dart';
import 'package:driver_app/features/rides/domain/entities/ride_message_dto.dart';

enum DispatchRealtimeEventType {
  rideCreated,
  rideUpdated,
  rideRemoved,
  rideAssigned,
  offerReceived,
  offerExpired,
  offerCancelled,
  raw,
}

class DispatchRealtimeEvent {
  const DispatchRealtimeEvent({
    required this.type,
    required this.message,
    this.ride,
    this.rideId,
    this.payload,
  });

  final DispatchRealtimeEventType type;
  final RideMessageDto message;
  final Ride? ride;
  final String? rideId;
  final Map<String, dynamic>? payload;

  factory DispatchRealtimeEvent.fromMessage(RideMessageDto message) {
    final payload = _asMap(message.content);
    final ride = _tryParseRide(message.content);
    final rideId = _readRideId(message.content);

    switch (message.operationCode) {
      case RideOperationCode.dispatch:
        return DispatchRealtimeEvent(
          type: DispatchRealtimeEventType.rideCreated,
          message: message,
          ride: ride,
          rideId: ride?.id ?? rideId,
          payload: payload,
        );
      case RideOperationCode.update:
      case RideOperationCode.confirmUpdate:
        return DispatchRealtimeEvent(
          type: DispatchRealtimeEventType.rideUpdated,
          message: message,
          ride: ride,
          rideId: ride?.id ?? rideId,
          payload: payload,
        );
      case RideOperationCode.advertiseToDrivers:
        return DispatchRealtimeEvent(
          type: DispatchRealtimeEventType.offerReceived,
          message: message,
          ride: ride,
          rideId: ride?.id ?? rideId,
          payload: payload,
        );
      case RideOperationCode.rideRequestGranted:
      case RideOperationCode.notifyDispatcherRideWasTaken:
      case RideOperationCode.broadcastRideWasTaken:
        return DispatchRealtimeEvent(
          type: DispatchRealtimeEventType.rideAssigned,
          message: message,
          ride: ride,
          rideId: ride?.id ?? rideId,
          payload: payload,
        );
      case RideOperationCode.rideRequestDeniedAlreadyTaken:
        return DispatchRealtimeEvent(
          type: DispatchRealtimeEventType.offerExpired,
          message: message,
          rideId: rideId,
          payload: payload,
        );
      case RideOperationCode.rideCanceledByDispatcher:
      case RideOperationCode.notifyDispatcherRideRequestWasCanceled:
        return DispatchRealtimeEvent(
          type: DispatchRealtimeEventType.offerCancelled,
          message: message,
          rideId: rideId,
          payload: payload,
        );
      case RideOperationCode.cancel:
      case RideOperationCode.confirmCancel:
      case RideOperationCode.cancelTen:
      case RideOperationCode.confirmCancelTen:
        return DispatchRealtimeEvent(
          type: DispatchRealtimeEventType.rideRemoved,
          message: message,
          rideId: rideId,
          payload: payload,
        );
      case RideOperationCode.confirmDispatch:
      case RideOperationCode.requestRide:
      case RideOperationCode.pickedUpPassenger:
      case RideOperationCode.confirmPassengerWasPickedUp:
      case RideOperationCode.endRide:
      case RideOperationCode.endRideAck:
      case RideOperationCode.notifyDispatcherPassengerWasPickedUp:
      case RideOperationCode.notifyDispatcherRideEnded:
        return DispatchRealtimeEvent(
          type: DispatchRealtimeEventType.raw,
          message: message,
          ride: ride,
          rideId: ride?.id ?? rideId,
          payload: payload,
        );
    }
  }

  factory DispatchRealtimeEvent.fromEnvelope(WsEnvelope envelope) {
    final payload = _asMap(envelope.payload);
    final message = _toRideMessageDto(envelope, payload);
    final ride = _tryParseRide(envelope.payload);
    final rideId = _readRideId(envelope.payload);

    switch (message.operationCode) {
      case RideOperationCode.dispatch:
        return DispatchRealtimeEvent(
          type: DispatchRealtimeEventType.rideCreated,
          message: message,
          ride: ride,
          rideId: ride?.id ?? rideId,
          payload: payload,
        );
      case RideOperationCode.update:
      case RideOperationCode.confirmUpdate:
        return DispatchRealtimeEvent(
          type: DispatchRealtimeEventType.rideUpdated,
          message: message,
          ride: ride,
          rideId: ride?.id ?? rideId,
          payload: payload,
        );
      case RideOperationCode.advertiseToDrivers:
        return DispatchRealtimeEvent(
          type: DispatchRealtimeEventType.offerReceived,
          message: message,
          ride: ride,
          rideId: ride?.id ?? rideId,
          payload: payload,
        );
      case RideOperationCode.rideRequestGranted:
      case RideOperationCode.notifyDispatcherRideWasTaken:
      case RideOperationCode.broadcastRideWasTaken:
        return DispatchRealtimeEvent(
          type: DispatchRealtimeEventType.rideAssigned,
          message: message,
          ride: ride,
          rideId: ride?.id ?? rideId,
          payload: payload,
        );
      case RideOperationCode.rideRequestDeniedAlreadyTaken:
        return DispatchRealtimeEvent(
          type: DispatchRealtimeEventType.offerExpired,
          message: message,
          rideId: rideId,
          payload: payload,
        );
      case RideOperationCode.rideCanceledByDispatcher:
      case RideOperationCode.notifyDispatcherRideRequestWasCanceled:
        return DispatchRealtimeEvent(
          type: DispatchRealtimeEventType.offerCancelled,
          message: message,
          rideId: rideId,
          payload: payload,
        );
      case RideOperationCode.cancel:
      case RideOperationCode.confirmCancel:
      case RideOperationCode.cancelTen:
      case RideOperationCode.confirmCancelTen:
        return DispatchRealtimeEvent(
          type: DispatchRealtimeEventType.rideRemoved,
          message: message,
          rideId: rideId,
          payload: payload,
        );
      case RideOperationCode.confirmDispatch:
      case RideOperationCode.requestRide:
      case RideOperationCode.pickedUpPassenger:
      case RideOperationCode.confirmPassengerWasPickedUp:
      case RideOperationCode.endRide:
      case RideOperationCode.endRideAck:
      case RideOperationCode.notifyDispatcherPassengerWasPickedUp:
      case RideOperationCode.notifyDispatcherRideEnded:
        return DispatchRealtimeEvent(
          type: DispatchRealtimeEventType.raw,
          message: message,
          ride: ride,
          rideId: ride?.id ?? rideId,
          payload: payload,
        );
    }
  }
}

Ride? _tryParseRide(dynamic rawContent) {
  if (rawContent is Map<String, dynamic> &&
      rawContent.containsKey('origin') &&
      rawContent.containsKey('destination')) {
    return Ride.fromJson(rawContent);
  }
  if (rawContent is Map &&
      rawContent.containsKey('origin') &&
      rawContent.containsKey('destination')) {
    return Ride.fromJson(Map<String, dynamic>.from(rawContent));
  }

  return null;
}

Map<String, dynamic>? _asMap(dynamic rawContent) {
  if (rawContent is Map<String, dynamic>) {
    return rawContent;
  }
  if (rawContent is Map) {
    return Map<String, dynamic>.from(rawContent);
  }

  return null;
}

String? _readRideId(dynamic rawContent) {
  final payload = _asMap(rawContent);
  if (payload == null) {
    return null;
  }

  return payload['id']?.toString() ?? payload['rideId']?.toString();
}

RideMessageDto _toRideMessageDto(
  WsEnvelope envelope,
  Map<String, dynamic>? payload,
) {
  final operationCode = envelope.rawOperationCode;
  final resolvedOperationCode =
      operationCode == null ? RideOperationCode.dispatch : rideOperationCodeFromInt(operationCode);
  return RideMessageDto(
    operationCode: resolvedOperationCode,
    content: payload ?? envelope.payload,
    error: envelope.error ?? '',
  );
}
