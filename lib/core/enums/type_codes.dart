enum webSocketTypecode { ride, chat, notification }

const Map<webSocketTypecode, int> webSocketTypecodeValues = {
  webSocketTypecode.ride: 100,
  webSocketTypecode.chat: 200,
  webSocketTypecode.notification: 300,
};

webSocketTypecode? webSocketTypecodeFromInt(int value) {
  return webSocketTypecodeValues.entries
      .firstWhere((e) => e.value == value)
      .key;
}

int webSocketTypecodeToInt(webSocketTypecode code) {
  return webSocketTypecodeValues[code]!;
}
// -----------------------------------------------------------
enum RideTypeCode { newRide, cancelRide, updateRide, giveRide,takenRide,pickup, completeRide }

const Map<RideTypeCode, int> rideTypeCodeValues = {
  RideTypeCode.takenRide: 20,
  RideTypeCode.newRide: 21, 
  RideTypeCode.cancelRide: 22,
  RideTypeCode.updateRide: 23,
  RideTypeCode.giveRide: 24,
  RideTypeCode.pickup: 25,
  RideTypeCode.completeRide: 26,
};

RideTypeCode? rideTypeCodeFromInt(int value) {
  return rideTypeCodeValues.entries.firstWhere((e) => e.value == value).key;
}

int rideTypeCodeToInt(RideTypeCode code) {
  return rideTypeCodeValues[code]!;
}

//-----------------------------------------------------------

enum ChatTypeCode { send, receive }

const Map<ChatTypeCode, int> chatTypeCodeValues = {
  ChatTypeCode.send: 21,
  ChatTypeCode.receive: 22,
};

ChatTypeCode? chatTypeCodeFromInt(int value) {
  return chatTypeCodeValues.entries.firstWhere((e) => e.value == value).key;
}

int chatTypeCodeToInt(ChatTypeCode code) {
  return chatTypeCodeValues[code]!;
}
