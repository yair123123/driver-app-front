import 'package:driver_app/features/app/presentation/providers/app_prefs_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../auth/presentation/providers/auth_provider.dart';
import '../../../reference_data/presentation/providers/reference_data_providers.dart';
import '../../../settings/presentation/providers/settings_provider.dart';
import '../../../stations/domain/entities/station.dart';
import '../../../stations/presentation/providers/stations_providers.dart';
import '../../domain/usecases/create_ride_from_form_use_case.dart';
import '../providers/dispatch_dependencies_providers.dart';
import '../providers/summary_dispatches_provider.dart';
import '../states/form_dispatch_state.dart';

class FormControllersPayload {
  final String originCity;
  final String originNeighborhood;
  final String originStreet;
  final String destinationCity;
  final String destinationNeighborhood;
  final String destinationStreet;
  final String price;
  final String phone;
  final String comment;

  const FormControllersPayload({
    required this.originCity,
    required this.originNeighborhood,
    required this.originStreet,
    required this.destinationCity,
    required this.destinationNeighborhood,
    required this.destinationStreet,
    required this.price,
    required this.phone,
    required this.comment,
  });
}

class FormDispatchNotifier extends AsyncNotifier<DispatchFormState> {
  @override
  Future<DispatchFormState> build() async {
    final referenceData = await ref.watch(referenceDataProvider.future);
    final user = await ref.watch(userProvider.future);
    final defaultStationId =
        await ref.watch(appProvider).appPrefs.defaultStationId;
    final stationIds =
        user?.dispatcherStationsId.whereType<int>().toList(growable: false) ??
        const <int>[];
    final stations = await ref.watch(
      stationsByIdsProvider(StationIdsFilter(stationIds)).future,
    );
    return DispatchFormState(
      referenceData: referenceData,
      stations: stations,
      selectedStation: _resolveSelectedStation(stations, defaultStationId),
      isInternal: false,
      isSubmitting: false,
      sent: false,
      errorMessage: null,
    );
  }

  void onChangeStation(Station? station) {
    final current = state.valueOrNull;
    if (current == null) return;
    state = AsyncData(
      current.copyWith(
        selectedStation: station,
      ),
    );
  }

  void onInternalChanged(bool isInternal) {
    final current = state.valueOrNull;
    if (current == null) return;
    state = AsyncData(
      current.copyWith(
        isInternal: isInternal,
        sent: false,
        clearErrorMessage: true,
      ),
    );
  }

  Future<void> submit(FormControllersPayload payload) async {
    final current = state.valueOrNull;
    if (current == null) return;
    state = AsyncData(
      current.copyWith(
        isSubmitting: true,
        sent: false,
        clearErrorMessage: true,
      ),
    );
    try {
      final selectedStationId = current.selectedStation?.id;
      if (selectedStationId == null) {
        return;
      }
      await ref
          .read(settingsProvider.notifier)
          .updateDefaultStation(selectedStationId);

      final createRide = ref.read(createRideFromFormUsecaseProvider);
      final result = createRide(
        CreateRideFromFormParams(
          stationId: selectedStationId,
          originCity: payload.originCity,
          originNeighborhood: payload.originNeighborhood,
          originStreet: payload.originStreet,
          destinationCity: payload.destinationCity,
          destinationNeighborhood: payload.destinationNeighborhood,
          destinationStreet: payload.destinationStreet,
          price: payload.price,
          passengerPhone: payload.phone,
          comments: payload.comment,
        ),
      );
      if (!result.isSuccess || result.offer == null) {
        state = AsyncData(
          current.copyWith(isSubmitting: false, errorMessage: result.error),
        );
        return;
      }
      final ride = result.offer!;
      ref.read(dispatchNewRideUseCaseProvider)(ride);
      state = AsyncData(
        current.copyWith(
          isSubmitting: false,
          sent: true,
          clearErrorMessage: true,
        ),
      );
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }

  void resetTransientState() {
    final current = state.valueOrNull;
    if (current == null) return;
    state = AsyncData(
      current.copyWith(
        isSubmitting: false,
        sent: false,
        clearErrorMessage: true,
      ),
    );
  }

  Station? _resolveSelectedStation(
    List<Station> stations,
    int? defaultStationId,
  ) {
    if (stations.isEmpty) return null;
    for (final station in stations) {
      if (station.id == defaultStationId) {
        return station;
      }
    }
    return stations.first;
  }
}
