enum DriverAvailabilityStatus { offline, enabling, available, disabling, error }

class DriverAvailabilityState {
  const DriverAvailabilityState({required this.status, this.message});

  const DriverAvailabilityState.offline()
    : this(status: DriverAvailabilityStatus.offline);

  const DriverAvailabilityState.enabling()
    : this(status: DriverAvailabilityStatus.enabling);

  const DriverAvailabilityState.available()
    : this(status: DriverAvailabilityStatus.available);

  const DriverAvailabilityState.disabling()
    : this(status: DriverAvailabilityStatus.disabling);

  const DriverAvailabilityState.error(String message)
    : this(status: DriverAvailabilityStatus.error, message: message);

  final DriverAvailabilityStatus status;
  final String? message;

  bool get isAvailable => status == DriverAvailabilityStatus.available;
  bool get isOffline => status == DriverAvailabilityStatus.offline;
}
