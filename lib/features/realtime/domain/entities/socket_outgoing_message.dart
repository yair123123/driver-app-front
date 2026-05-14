class SocketOutgoingMessage {
  const SocketOutgoingMessage({
    required this.typeCode,
    required this.operationCode,
    this.content,
  });

  final int typeCode;
  final int operationCode;
  final Map<String, dynamic>? content;
}
