import 'package:driver_app/features/dispatch_realtime/data/dtos/dispatch_realtime_action_dto.dart';
import 'package:driver_app/features/dispatch_realtime/domain/constants/dispatch_realtime_operation_codes.dart';
import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_action.dart';
import 'package:driver_app/features/realtime/domain/entities/socket_outgoing_message.dart';
import 'package:driver_app/features/realtime/domain/entities/socket_type_codes.dart';

abstract final class DispatchRealtimeActionMapper {
  static DispatchRealtimeActionDto toDto(DispatchRealtimeAction action) {
    return switch (action) {
      AcceptRideOfferAction(:final rideId, :final roundId) =>
        DispatchRealtimeActionDto(
          operationCode: DispatchRealtimeOperationCodes.acceptRideOffer,
          content: {'rideId': rideId, if (roundId != null) 'roundId': roundId},
        ),
      RejectRideOfferAction(:final rideId, :final roundId, :final reason) =>
        DispatchRealtimeActionDto(
          operationCode: DispatchRealtimeOperationCodes.rejectRideOffer,
          content: {
            'rideId': rideId,
            if (roundId != null) 'roundId': roundId,
            if (reason != null) 'reason': reason,
          },
        ),
      CallCustomerAction(:final rideId) => DispatchRealtimeActionDto(
        operationCode: DispatchRealtimeOperationCodes.callCustomer,
        content: {'rideId': rideId},
      ),
      UpdateRideStatusAction(:final rideId, :final status) =>
        DispatchRealtimeActionDto(
          operationCode: DispatchRealtimeOperationCodes.updateRideStatus,
          content: {'rideId': rideId, 'status': status},
        ),
    };
  }

  static SocketOutgoingMessage toSocketMessage(DispatchRealtimeAction action) {
    final dto = toDto(action);
    return SocketOutgoingMessage(
      typeCode: SocketTypeCodes.rides,
      operationCode: dto.operationCode,
      content: dto.content,
    );
  }
}
