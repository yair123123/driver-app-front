enum RideOperationCode {
  dispatch,
  confirmDispatch,
  update,
  confirmUpdate,
  cancel,
  confirmCancel,
  notifyCancel,
  advertiseToDrivers,
  reserve,
  confirmReserve,
  advertiseTaken,
  cancelGive,
  alreadyTaken,
}

const Map<RideOperationCode, int> rideOperationCodeValues = {
  RideOperationCode.dispatch: 201,
  RideOperationCode.confirmDispatch: 202,
  RideOperationCode.update: 203,
  RideOperationCode.confirmUpdate: 204,
  RideOperationCode.cancel: 205,
  RideOperationCode.confirmCancel: 206,
  RideOperationCode.notifyCancel: 208,
  RideOperationCode.advertiseToDrivers: 210,
  RideOperationCode.reserve: 211,
  RideOperationCode.confirmReserve: 212,
  RideOperationCode.advertiseTaken: 214,
  RideOperationCode.cancelGive: 215,
  RideOperationCode.alreadyTaken: 216,
};

RideOperationCode rideOperationCodeFromInt(int value) {
  return rideOperationCodeValues.entries.firstWhere(
    (e) => e.value == value,
    orElse: () => throw ArgumentError('Invalid RideOperationCode: $value'),
  ).key;
}

int rideOperationCodeToInt(RideOperationCode code) {
  return rideOperationCodeValues[code]!;
}
