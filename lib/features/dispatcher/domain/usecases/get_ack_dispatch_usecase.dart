import 'dart:async';

import 'package:driver_app/features/dispatcher/domain/repositories/dispatch_repository.dart';

class GetAckDispatchUsecase {
  final DispatchRepository repository;
  GetAckDispatchUsecase(this.repository);

  Future<bool> call(String rideId) async {
    try {
      await repository
          .getAckDispatch()
          .firstWhere((ack) => ack['id'] == rideId)
          .timeout(Duration(seconds: 10));
      return true;
    } on TimeoutException {
      return false;
    } catch (e) {
      print('Error getting dispatch acknowledgment: $e');
      return false;
    }
  }
}
