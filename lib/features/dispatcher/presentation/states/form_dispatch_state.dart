import 'package:driver_app/features/main/domein/entities/station.dart';
import 'package:driver_app/features/main/domein/entities/user.dart';

class DispatchState {
  final Station station;
  final String rideDetails;
  final int indexCurrentLine;
  final bool isSending;
  final bool isLoading;
  final String errorMessage;

  DispatchState({
    required this.station,
    required this.rideDetails,
    required this.indexCurrentLine,
    required this.isSending,
    required this.isLoading,
    required this.errorMessage,
  });
  DispatchState copyWith({
    Station? station,
    String? rideDetails,
    int? indexCurrentLine,
    bool? isSending,
    bool? isLoading,
    String? errorMessage,
  }) {
    return DispatchState(
      station: station ?? this.station,
      rideDetails: rideDetails ?? this.rideDetails,
      indexCurrentLine: indexCurrentLine ?? this.indexCurrentLine,
      isSending: isSending ?? this.isSending,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
   static DispatchState  initial(User user)  {
    return DispatchState(
      station: user.dispatcher_stations[0],
      rideDetails: "",
      indexCurrentLine:0,
      isSending: false,
      isLoading: false,
      errorMessage: "",
    );
  }
}
