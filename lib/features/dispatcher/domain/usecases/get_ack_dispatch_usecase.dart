import 'dart:async';

import 'package:driver_app/features/dispatcher/domain/repositories/dispatch_repository.dart';

class GetAckDispatchUsecase {
  final DispatchRepository repository;
  GetAckDispatchUsecase(this.repository);

  Future<void> call(String rideId) async {
    try {
      await repository
          .getAckDispatch()
          .firstWhere((ack) => ack['id'] == rideId)
          .timeout(Duration(seconds: 10));
    } on TimeoutException {
      throw('Error getting dispatch acknowledgment: Timeout');
    } catch (e) {
      throw('Error getting dispatch acknowledgment: $e');
    }
  }
}
