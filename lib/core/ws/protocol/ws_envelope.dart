import 'package:driver_app/core/ws/enums/ws_topic.dart';

class WsEnvelope {
  const WsEnvelope({
    required this.topic,
    required this.payload,
    required this.raw,
    this.action,
    this.destination,
    this.eventId,
    this.requestId,
    this.timestamp,
    this.version,
    this.rawTypeCode,
    this.rawOperationCode,
    this.error,
  });

  final WsTopic topic;
  final dynamic payload;
  final String? action;
  final String? destination;
  final String? eventId;
  final String? requestId;
  final DateTime? timestamp;
  final String? version;
  final int? rawTypeCode;
  final int? rawOperationCode;
  final String? error;
  final Map<String, dynamic> raw;
}
