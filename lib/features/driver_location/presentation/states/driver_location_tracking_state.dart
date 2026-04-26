import 'package:driver_app/features/driver_location/domain/entities/driver_location.dart';

enum DriverLocationTrackingStatus { idle, starting, tracking, stopped, error }

class DriverLocationTrackingState {
  const DriverLocationTrackingState({
    required this.status,
    this.location,
    this.message,
  });

  const DriverLocationTrackingState.idle()
    : this(status: DriverLocationTrackingStatus.idle);

  const DriverLocationTrackingState.starting()
    : this(status: DriverLocationTrackingStatus.starting);

  const DriverLocationTrackingState.tracking(DriverLocation location)
    : this(status: DriverLocationTrackingStatus.tracking, location: location);

  const DriverLocationTrackingState.stopped({DriverLocation? location})
    : this(status: DriverLocationTrackingStatus.stopped, location: location);

  const DriverLocationTrackingState.error(
    String message, {
    DriverLocation? location,
  }) : this(
         status: DriverLocationTrackingStatus.error,
         location: location,
         message: message,
       );

  final DriverLocationTrackingStatus status;
  final DriverLocation? location;
  final String? message;

  bool get isTracking => status == DriverLocationTrackingStatus.tracking;
}
