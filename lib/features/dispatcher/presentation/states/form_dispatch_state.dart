
import 'package:driver_app/features/main/domein/entities/station.dart';

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
    bool? isSending,
    bool? isLoading,
    String? errorMessage,
  }) {
    return DispatchState(
      station: station ?? this.station,
      isSending: isSending ?? this.isSending,
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
