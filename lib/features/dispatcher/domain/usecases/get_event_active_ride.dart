import 'dart:async';

import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_event.dart';
import 'package:driver_app/features/dispatcher/domain/repositories/dispatch_repository.dart';

class GetEventActiveRideUsecase {
  final DispatchRepository repository;
  GetEventActiveRideUsecase(this.repository);

  Stream<DispatchRealtimeEvent> call() {
    return repository.getEventsActiveRide();
  }
}
