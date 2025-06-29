enum RideOperationCode {
  /// Initiates a new ride dispatch from the dispatcher to the system.
  /// This operation creates the ride and makes it visible to drivers.
  dispatch,

  /// Confirms that the ride dispatch was successfully processed by the system.
  /// Sent as an acknowledgment back to the dispatcher.
  confirmDispatch,

  /// Updates the details of an already-dispatched ride (e.g., price, location).
  /// Can be triggered by dispatcher before the ride is taken.
  update,

  /// Acknowledges that the ride update was successfully processed.
  /// Sent back to confirm the ride's new state.
  confirmUpdate,

  /// Cancels a ride that was previously dispatched or reserved.
  /// Typically triggered by the dispatcher or the system.
  cancel,

  /// Confirms that the ride was successfully cancelled.
  /// Acknowledges the cancellation request.
  confirmCancel,

  /// Notifies all relevant parties (e.g., drivers) that a ride was cancelled.
  /// Unlike `confirmCancel`, this is a push notification rather than a response.
  notifyCancel,

  /// Publishes a ride to a pool of nearby drivers.
  /// May be used in broadcast or targeted advertising.
  advertiseToDrivers,

  /// A driver reserves a ride before officially taking it.
  /// Marks intent to handle the ride, pending confirmation.
  reserve,

  /// Confirms that the ride reservation was successfully processed.
  /// Sent to the reserving driver.
  confirmReserve,

  /// Broadcasts to others that the ride has already been taken by someone.
  /// Used when a second driver attempts to take the same ride.
  advertiseTaken,

  /// Used when a driver cancels a reserved ride before pickup.
  /// Returns the ride to the available state.
  cancelGive,

  /// Confirms that the cancelGive status was accepted by the server.
  /// Ensures consistent state across driver and server.
  confirmCancelGive,

  /// Indicates that a driver attempted to take a ride that is no longer available.
  /// Often shown as a UI notice: “This ride was already taken.”
  alreadyTaken,

  /// The driver has arrived at the pickup location and collected the passenger.
  /// Updates the ride status to “in progress.”
  pickup,

  /// Confirms that the pickup status was accepted by the server.
  /// Ensures consistent state across driver and server.
  confirmPickup,

/// Indicates that the driver is in the process of completing the ride.
/// Triggers final ride steps such as calculating fare or notifying the passenger.
finishingRide,

/// Confirms that the ride completion was acknowledged by the server.
/// Ensures the ride is marked as finished on both client and server sides.
confirmFinishingRide,
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
  RideOperationCode.pickup: 213,
  RideOperationCode.confirmPickup: 214,
  RideOperationCode.cancelGive: 215,
  RideOperationCode.confirmCancelGive: 216,
  RideOperationCode.finishingRide: 217,
  RideOperationCode.advertiseTaken: 218,
  RideOperationCode.confirmFinishingRide: 219,
  RideOperationCode.alreadyTaken: 220,
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
