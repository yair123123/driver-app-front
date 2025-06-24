import 'package:driver_app/features/dispatcher/domain/entities/initail_screen.dart';
import 'package:driver_app/features/main/domein/entities/station.dart';

class InitialScreenState {
  List<String> cities;
  Map<String, List<String>> neighborhoods;
  Map<String, List<int>> prices;
  List<Station> stations;
  List<String> comments;

  InitialScreenState(
    this.cities,
    this.neighborhoods,
    this.prices,
    this.stations,
    this.comments,
  );

  InitialScreenState copyWith({
    List<String>? cities,
    Map<String, List<String>>? neighborhoods,
    Map<String, List<int>>? prices,
    List<Station>? stations,
    List<String>? comments,
  }) {
    return InitialScreenState(
      cities ?? this.cities,
      neighborhoods ?? this.neighborhoods,
      prices ?? this.prices,
      stations ?? this.stations,
      comments ?? this.comments,
    );
  }
  static InitialScreenState fromModel({
    required InitialScreen initialScreen,
    required List<Station> stations,
  }) {
    return InitialScreenState(
      initialScreen.cities,
      initialScreen.neighborhoods,
      initialScreen.prices,
      stations,
      initialScreen.comments,
    );
  }
}
