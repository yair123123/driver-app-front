abstract final class DispatchRealtimeOperationCodes {
  // TODO(dispatch_realtime): Confirm operation codes with the backend contract.
  static const int rideCreated = 301;
  static const int rideUpdated = 302;
  static const int rideCancelled = 303;
  static const int rideAssigned = 304;
  static const int rideOfferReceived = 305;
  static const int rideOfferExpired = 306;
  static const int rideOfferCancelled = 307;
  static const int rideActionResult = 308;

  // TODO(dispatch_realtime): Confirm operation codes with the backend contract.
  static const int acceptRideOffer = 351;
  static const int rejectRideOffer = 352;
  static const int callCustomer = 353;
  static const int updateRideStatus = 354;
}
