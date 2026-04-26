import 'package:driver_app/features/dispatcher/domain/entities/cancel_ride.dart';
import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_event.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';
import '../entities/offer.dart';

abstract class DispatchRepository {
  Future<void> dispatchNewOffer(Offer offer);
  // Future<void> updateRide(Offer offer);
  void cancelRide(CancelOffer offer);
  Stream<DispatchRealtimeEvent> getEventsActiveRide();
}
