import 'package:driver_app/features/bootstrap/domain/entities/station/station.dart';
import 'package:driver_app/features/bootstrap/presentation/providers/settings_provider.dart';
import 'package:driver_app/features/dispatcher/presentation/notifiers/parser_util.dart';
import 'package:driver_app/features/dispatcher/presentation/providers/summary_dispatches_provider.dart';
import 'package:driver_app/features/dispatcher/presentation/states/form_dispatch_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormDispatchNotifier extends AsyncNotifier<DispatchState> {
  Future<DispatchState> build() async {
    final initScreen = await ref.watch(initialScreenUseCaseProvider)();
    return DispatchState.initial(initScreen);
  }

  Future<void> addRide(String text, Station station) async {

    try {

    ref.read(settingsProvider.notifier).updateDefaultStation(station);
    state = AsyncLoading();
    final result = parseRideFromText(text, station.station_id);

    if (!result.isSuccess) {
      state = AsyncValue.data(state.value!.copyWith(error: result.error));
      return;
    }

    final ride = result.ride!;

    ref.read(dispatchNewRideUseCaseProvider)(ride);
    await ref.read(getAckDispatchUseCaseProvider)(ride.id);
    ref.read(summaryRidesProvider.notifier).addDispatch(ride);
    state = AsyncValue.data(state.value!.copyWith(error: null,send: true));
    } catch (e, s) {
      state = AsyncError(e, s);
      print("Error adding ride: $e");
    }
  }
}
