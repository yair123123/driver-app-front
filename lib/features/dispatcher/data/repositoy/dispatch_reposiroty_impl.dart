import 'package:driver_app/core/enums/ride_operation_code.dart';
import 'package:driver_app/features/dispatcher/data/datasources/websocket_datasource.dart';
import 'package:driver_app/features/dispatcher/data/models/create_ride_from_dispatcher_request_dto.dart';
import 'package:driver_app/features/dispatcher/domain/entities/cancel_ride.dart';
import 'package:driver_app/features/dispatcher/domain/entities/offer.dart';
import 'package:driver_app/features/dispatcher/domain/repositories/dispatch_repository.dart';
import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_event.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride.dart';
import 'package:driver_app/features/rides/domain/entities/ride_message_dto.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';
import '../datasources/api_remote_data_source.dart';

class DispatchRepositoryImpl implements DispatchRepository {
  final WebsocketDatasource websocketDatasource;
  final ApiRemoteDataSource apiRemoteDataSource;

  DispatchRepositoryImpl(this.websocketDatasource, this.apiRemoteDataSource);

  @override
  Future<void> dispatchNewOffer(Offer offer) {
    return apiRemoteDataSource.sendNewOffer(CreateRideFromDispatcherRequestDto.fromEntity(offer));
  }

  // @override
  // Future<void> updateRide(Offer offer) {
  //
  //   return apiRemoteDataSource.updateOffer(offer.toModel());
  // }

  @override
  void cancelRide(CancelOffer cancel) {
    RideMessageDto rideDto = RideMessageDto(
      operationCode: RideOperationCode.cancel,
      content: cancel,
      error: "",
    );
    websocketDatasource.sendRideAction(rideDto);
  }


  @override
  Stream<DispatchRealtimeEvent> getEventsActiveRide() {
    return websocketDatasource.getRidesEvents().where(
      (event) =>
          event.type == DispatchRealtimeEventType.raw ||
          event.type == DispatchRealtimeEventType.rideAssigned ||
          event.type == DispatchRealtimeEventType.rideRemoved ||
          event.type == DispatchRealtimeEventType.offerCancelled,
    );
  }
}
