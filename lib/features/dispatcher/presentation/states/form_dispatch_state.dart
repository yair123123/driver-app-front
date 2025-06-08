
import 'package:driver_app/features/dispatcher/presentation/states/initial_screen_state.dart';
import 'package:driver_app/features/main/domein/entities/station.dart';
import 'package:driver_app/features/main/domein/entities/user.dart';


class DispatchState {
  final List<String> cities;
  final Map<String, List<String>> neighborhoods;
  final Map<String, int> prices;
  final Station station;
  final String rideDetails;
  final int indexCurrentLine;
  final bool isSending;
  final bool isLoading;
  final String errorMessage;
  final Map<int,String> selectedValue;
  DispatchState({
    required this.cities,
    required this.neighborhoods,
    required this.prices,
    required this.station,
    required this.rideDetails,
    required this.indexCurrentLine,
    required this.isSending,
    required this.isLoading,
    required this.errorMessage,
    required this.selectedValue,
  });
  DispatchState copyWith({
    Station? station,
    String? rideDetails,
    int? indexCurrentLine,
    bool? isSending,
    bool? isLoading,
    String? errorMessage,
    List<String>? cities,
    Map<String, List<String>>? neighborhoods,
    Map<String, int>? prices,
    Map<int,String>? selectedValue,
  }) {
    return DispatchState(
      station: station ?? this.station,
      rideDetails: rideDetails ?? this.rideDetails,
      indexCurrentLine: indexCurrentLine ?? this.indexCurrentLine,
      isSending: isSending ?? this.isSending,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      cities: cities ?? this.cities,
      neighborhoods: neighborhoods ?? this.neighborhoods,
      prices: prices ?? this.prices,
      selectedValue: selectedValue ?? this.selectedValue
    );
  }

  static DispatchState initial(User user,InitialScreenState initialScreenState) {
    return DispatchState(
      selectedValue: {},
      cities: initialScreenState.cities,
      neighborhoods: initialScreenState.neighborhoods,
      prices: initialScreenState.prices,
      station: user.dispatcher_stations[0],
      rideDetails: "",
      indexCurrentLine: 0,
      isSending: false,
      isLoading: false,
      errorMessage: "",
    );
  }

  List<String> getTemplates() {
    switch (indexCurrentLine) {
      case 0:
        return cities;
      case 1:
        return neighborhoods[selectedValue[1]] ?? [];
      case 2:
        return cities;
      case 3:
        return neighborhoods[selectedValue[3]] ?? [];
      case 4:
        return prices[selectedValue[3]] != null
            ? [prices[selectedValue[2]! + '' + selectedValue[3]!].toString()]
            : [];
      case 5:
        return ['העתק טלפון מהלוח'];
      default:
        return ['פרטים נוספים'];
    }
  }
}
