import 'package:driver_app/features/dispatch_realtime/data/mappers/dispatch_realtime_action_mapper.dart';
import 'package:driver_app/features/dispatch_realtime/data/mappers/dispatch_realtime_event_mapper.dart';
import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_action.dart';
import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_event.dart';
import 'package:driver_app/features/dispatch_realtime/domain/repositories/dispatch_realtime_repository.dart';
import 'package:driver_app/features/realtime/domain/entities/socket_type_codes.dart';
import 'package:driver_app/features/realtime/domain/repositories/realtime_repository.dart';

class DispatchRealtimeRepositoryImpl implements DispatchRealtimeRepository {
  const DispatchRealtimeRepositoryImpl({required this.realtimeRepository});

  final RealtimeRepository realtimeRepository;

  @override
  Stream<DispatchRealtimeEvent> get events {
    return realtimeRepository.events
        .where((envelope) => envelope.typeCode == SocketTypeCodes.rides)
        .map(DispatchRealtimeEventMapper.fromEnvelope);
  }

  @override
  Future<void> sendAction(DispatchRealtimeAction action) {
    final message = DispatchRealtimeActionMapper.toSocketMessage(action);
    return realtimeRepository.send(message);
  }

  @override
  Future<void> acceptRideOffer({required int rideId, String? roundId}) {
    return sendAction(AcceptRideOfferAction(rideId: rideId, roundId: roundId));
  }

  @override
  Future<void> rejectRideOffer({
    required int rideId,
    String? roundId,
    String? reason,
  }) {
    return sendAction(
      RejectRideOfferAction(rideId: rideId, roundId: roundId, reason: reason),
    );
  }

  @override
  Future<void> callCustomer({required int rideId}) {
    return sendAction(CallCustomerAction(rideId: rideId));
  }

  @override
  Future<void> updateRideStatus({required int rideId, required String status}) {
    return sendAction(UpdateRideStatusAction(rideId: rideId, status: status));
  }
}
