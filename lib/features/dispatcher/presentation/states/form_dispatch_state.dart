import 'package:driver_app/features/reference_data/domain/entities/reference_data_bundle.dart';
import 'package:driver_app/features/stations/domain/entities/station.dart';

class DispatchFormState {
  final ReferenceDataBundle referenceData;
  final List<Station> stations;
  final Station? selectedStation;
  final bool isInternal;
  final bool isSubmitting;
  final bool sent;
  final String? errorMessage;

  const DispatchFormState({
    required this.referenceData,
    required this.stations,
    required this.selectedStation,
    required this.isInternal,
    required this.isSubmitting,
    required this.sent,
    required this.errorMessage,
  });

  DispatchFormState copyWith({
    ReferenceDataBundle? referenceData,
    List<Station>? stations,
    Station? selectedStation,
    bool? isInternal,
    bool? isSubmitting,
    bool? sent,
    String? errorMessage,
    bool clearErrorMessage = false,
  }) {
    return DispatchFormState(
      referenceData: referenceData ?? this.referenceData,
      stations: stations ?? this.stations,
      selectedStation: selectedStation ?? this.selectedStation,
      isInternal: isInternal ?? this.isInternal,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      sent: sent ?? this.sent,
      errorMessage: clearErrorMessage ? null : (errorMessage ?? this.errorMessage),
    );
  }
}