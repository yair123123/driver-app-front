import 'package:driver_app/features/bootstrap/domain/entities/station/station.dart';

class DispatchState {
  final Station? station;
  final bool isSending;
  final bool isLoading;
  final String errorMessage;
  DispatchState({
    required this.station,
    required this.isSending,
    required this.isLoading,
    required this.errorMessage,
  });
  DispatchState copyWith({
    Station? station, 
    bool? send,
    bool? isLoading,
    String? errorMessage,
  }) {
    return DispatchState(
      station: station ?? this.station,
      isSending: send ?? this.isSending,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  static DispatchState initial(Station? station) {
    
    return DispatchState(
      station: station,
      isSending: false,
      isLoading: false,
      errorMessage: "",
    );
  }
}
