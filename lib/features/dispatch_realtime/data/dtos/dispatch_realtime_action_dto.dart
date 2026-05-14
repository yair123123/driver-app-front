class DispatchRealtimeActionDto {
  const DispatchRealtimeActionDto({
    required this.operationCode,
    required this.content,
  });

  final int operationCode;
  final Map<String, dynamic> content;
}
