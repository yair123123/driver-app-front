import 'package:driver_app/features/dispatcher/domain/entities/initial_screen.dart';
import 'package:driver_app/features/dispatcher/domain/entities/location/city.dart';

class DispatchState {
  final String?  error;
  final int? defoultStationId;
  final bool sent;
  final List<City>? cities;
  final Map<String, List<int>>? prices;
  final List<String>? comments;
  DispatchState({
    this.error,
    required this.sent,
    this.defoultStationId,
    this.cities,
    this.prices,
    this.comments,
  });
  DispatchState copyWith({
    String? error,
    int? station,
    bool? send,
    List<City>? cities,
    Map<String, List<int>>? prices,
    List<String>? comments,
  }) {
    return DispatchState(
      error: error ?? this.error,
      defoultStationId: station ?? this.defoultStationId,
      sent: send ?? this.sent,
      cities: cities ?? this.cities,
      prices: prices ?? this.prices,
      comments: comments ?? this.comments,
    );
  }

  static DispatchState initial(InitialScreen initState) {
    return DispatchState(
      cities: initState.cities,
      prices: initState.prices,
      comments: initState.comments,
      sent: false
      );
  }
}
