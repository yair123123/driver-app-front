import 'dart:async';

import 'package:driver_app/features/dispatcher/domain/repositories/dispatch_repository.dart';
import 'package:driver_app/features/rides/domain/entities/ride_message_dto.dart';

class GetEventActiveRideUsecase {
  final DispatchRepository repository;
  GetEventActiveRideUsecase(this.repository);

  Stream<RideMessageDto> call(){
    return repository.getEventsActiveRide();
  }
}
