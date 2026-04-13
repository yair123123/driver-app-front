import 'package:driver_app/core/enums/dispatch_status.dart';

import '../../../rides/domain/entities/ride/ride.dart';

class SummaryDispatchState {
  final String id;
  final String origin;
  final String destination;
  final DispatchStatus status;
  final String? driverName;
  final String passengerPhone;
  SummaryDispatchState({
    required this.id,
    required this.origin,
    required this.destination,
    required this.status,
    this.driverName,
    required this.passengerPhone,
  });

  SummaryDispatchState copyWith({
    String? id,
    String? origin,
    String? destination,
    DispatchStatus? status,
    String? driverName,
    String? passengerPhone,
  }) {
    return SummaryDispatchState(
      id: id ?? this.id,
      origin: origin ?? this.origin,
      destination: destination ?? this.destination,
      status: status ?? this.status,
      driverName: driverName ?? this.driverName,
      passengerPhone: passengerPhone ?? this.passengerPhone,
    );
  }
  factory SummaryDispatchState.initialFromRide(Ride ride) {
    return SummaryDispatchState(
      id: ride.id,
      origin:
          ride.origin.city +
          " " +
          (ride.origin.neighborhood ?? "") +
          " " +
          (ride.origin.street ?? ""),
      destination:
          ride.destination.city +
          " " +
          (ride.destination.neighborhood ?? "") +
          " " +
          (ride.destination.street ?? ""),
      status: DispatchStatus.waiting,
      driverName: null,
      passengerPhone: ride.passengerPhone,
    );
  }
}
