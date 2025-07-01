enum RideOperationCode {
  dispatch,
  confirmDispatch,
  update,
  confirmUpdate,
  cancel,
  confirmCancel,
  notifyDispatcherRideWasTaken,
  notifyDispatcherPassengerWasPickedUp,
  notifyDispatcherRideEnded,
  notifyDispatcherRideRequestWasCanceled,
  advertiseToDrivers,
  requestRide,
  rideRequestGranted,
  pickedUpPassenger,
  confirmPassengerWasPickedUp,
  cancelTen,
  confirmCancelTen,
  endRide,
  endRideAck,
  rideRequestDeniedAlreadyTaken,
  broadcastRideWasTaken,
  rideCanceledByDispatcher,
}

const Map<RideOperationCode, int> rideOperationCodeValues = {
  RideOperationCode.dispatch: 201,
  RideOperationCode.confirmDispatch: 202,
  RideOperationCode.update: 203,
  RideOperationCode.confirmUpdate: 204,
  RideOperationCode.cancel: 205,
  RideOperationCode.confirmCancel: 206,
  RideOperationCode.notifyDispatcherRideWasTaken: 207,
  RideOperationCode.notifyDispatcherPassengerWasPickedUp: 208,
  RideOperationCode.notifyDispatcherRideEnded: 209,
  RideOperationCode.notifyDispatcherRideRequestWasCanceled: 210,
  RideOperationCode.advertiseToDrivers: 240,
  RideOperationCode.requestRide: 241,
  RideOperationCode.rideRequestGranted: 242,
  RideOperationCode.pickedUpPassenger: 243,
  RideOperationCode.confirmPassengerWasPickedUp: 244,
  RideOperationCode.cancelTen: 245,
  RideOperationCode.confirmCancelTen: 246,
  RideOperationCode.endRide: 247,
  RideOperationCode.endRideAck: 248,
  RideOperationCode.rideRequestDeniedAlreadyTaken: 249,
  RideOperationCode.broadcastRideWasTaken: 250,
  RideOperationCode.rideCanceledByDispatcher: 251,
};

RideOperationCode rideOperationCodeFromInt(int value) {
  return rideOperationCodeValues.entries
      .firstWhere(
        (e) => e.value == value,
        orElse: () => throw ArgumentError('Invalid RideOperationCode: $value'),
      )
      .key;
}

int rideOperationCodeToInt(RideOperationCode code) {
  return rideOperationCodeValues[code]!;
}
