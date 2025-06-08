import 'package:driver_app/features/dispatcher/domain/entities/initail_screen.dart';
import 'package:driver_app/features/main/domein/entities/station.dart';

class InitialScreenState {
  List<String> cities;
  Map<String, List<String>> neighborhoods;
  Map<String, int> prices;
  List<Station> station;

  InitialScreenState(
    this.cities,
    this.neighborhoods,
    this.prices,
    this.station,
  );

  InitialScreenState copyWith({
    List<String>? cities,
    Map<String, List<String>>? neighborhoods,
    Map<String, int>? prices,
    List<Station>? station,
  }) {
    return InitialScreenState(
      cities ?? this.cities,
      neighborhoods ?? this.neighborhoods,
      prices ?? this.prices,
      station ?? this.station,
    );
  }
  static InitialScreenState fromModel({
    required InitialScreen initialScreen,
    required List<Station> station,
  }) {
    return InitialScreenState(
      initialScreen.cities,
      initialScreen.neighborhoods,
      initialScreen.prices,
      station,
    );
  }
}
