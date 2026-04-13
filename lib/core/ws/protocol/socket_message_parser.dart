import 'dart:convert';

import 'package:driver_app/core/enums/ride_operation_code.dart';
import 'package:driver_app/core/enums/websocket_typecode.dart';
import 'package:driver_app/core/ws/enums/ws_topic.dart';
import 'package:driver_app/core/ws/protocol/ws_envelope.dart';

class SocketMessageParser {
  WsEnvelope? parseRaw(dynamic rawMessage) {
    try {
      final decoded = _decode(rawMessage);
      if (decoded == null) {
        return null;
      }

      final rawTypeCode = _readInt(decoded['type_code']);
      final rawOperationCode = _readInt(decoded['operation_code']);
      final payload = decoded['content'];

      return WsEnvelope(
        topic: _mapTopic(rawTypeCode, rawOperationCode, decoded),
        payload: payload,
        action: _readString(decoded['action']) ?? _readString(decoded['event']),
        destination: _readString(decoded['destination']),
        eventId: _readString(decoded['event_id']) ?? _readString(decoded['eventId']),
        requestId: _readString(decoded['request_id']) ??
            _readString(decoded['requestId']),
        timestamp: _readTimestamp(decoded['timestamp']),
        version: _readString(decoded['version']),
        rawTypeCode: rawTypeCode,
        rawOperationCode: rawOperationCode,
        error: _readString(decoded['error']),
        raw: decoded,
      );
    } catch (error) {
      return null;
    }
  }

  Map<String, dynamic>? _decode(dynamic rawMessage) {
    if (rawMessage is Map<String, dynamic>) {
      return rawMessage;
    }
    if (rawMessage is Map) {
      return Map<String, dynamic>.from(rawMessage);
    }
    if (rawMessage is String) {
      final decoded = jsonDecode(rawMessage);
      if (decoded is Map<String, dynamic>) {
        return decoded;
      }
      if (decoded is Map) {
        return Map<String, dynamic>.from(decoded);
      }
    }
    return null;
  }

  WsTopic _mapTopic(
    int? rawTypeCode,
    int? rawOperationCode,
    Map<String, dynamic> raw,
  ) {
    if (rawTypeCode == null) {
      return WsTopic.unknown;
    }

    try {
      final typeCode = webSocketTypeCodeFromInt(rawTypeCode);
      switch (typeCode) {
        case WebSocketTypeCode.connected:
          return WsTopic.connected;
        case WebSocketTypeCode.rides:
          return WsTopic.rides;
        case WebSocketTypeCode.chat:
          return WsTopic.chat;
        case WebSocketTypeCode.code:
          break;
      }
    } catch (_) {}

    if (rawOperationCode != null) {
      try {
        rideOperationCodeFromInt(rawOperationCode);
        return WsTopic.rides;
      } catch (_) {}
    }

    final topic = _readString(raw['topic'])?.toLowerCase();
    switch (topic) {
      case 'chat':
        return WsTopic.chat;
      case 'rides':
        return WsTopic.rides;
      case 'dispatcher':
        return WsTopic.dispatcher;
      case 'location':
        return WsTopic.location;
      case 'system':
        return WsTopic.system;
      default:
        return WsTopic.unknown;
    }
  }

  int? _readInt(dynamic value) {
    if (value is int) return value;
    if (value is num) return value.toInt();
    if (value is String) return int.tryParse(value);
    return null;
  }

  String? _readString(dynamic value) {
    return value?.toString();
  }

  DateTime? _readTimestamp(dynamic value) {
    if (value is DateTime) return value;
    final text = _readString(value);
    if (text == null || text.isEmpty) return null;
    return DateTime.tryParse(text);
  }
}

