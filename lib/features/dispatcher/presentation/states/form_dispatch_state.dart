import 'package:driver_app/core/app/app_state_notifier.dart';
import 'package:driver_app/features/bootstrap/domain/entities/station/station.dart';
import 'package:driver_app/features/bootstrap/presentation/providers/settings_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DispatchState {
  final Station station;
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

  static DispatchState initial(Ref ref) {
    final stationId = ref.read(settingsProvider).defaultStationId;
    final stations = ref.read(appStateNotifierProvider).user!.dispatcher_stations;
    final station = stations.firstWhere(
      (s) => s.station_id == stationId,
      orElse: () => stations.first
    );
    return DispatchState(
      station: station,
      isSending: false,
      isLoading: false,
      errorMessage: "",
    );
  }
}
