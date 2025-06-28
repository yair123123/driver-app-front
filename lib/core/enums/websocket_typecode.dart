enum WebSocketTypeCode { code, connected, rides, chat }

const Map<WebSocketTypeCode, int> webSocketTypeCodeValues = {
  WebSocketTypeCode.connected: 1,
  WebSocketTypeCode.rides: 2,
  WebSocketTypeCode.chat: 3,
};

WebSocketTypeCode webSocketTypeCodeFromInt(int value) {
  return webSocketTypeCodeValues.entries.firstWhere(
    (e) => e.value == value,
    orElse: () => throw ArgumentError('Invalid WebSocketTypeCode: $value'),
  ).key;
}

int webSocketTypeCodeToInt(WebSocketTypeCode code) {
  return webSocketTypeCodeValues[code]!;
}
