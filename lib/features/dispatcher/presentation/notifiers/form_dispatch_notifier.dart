import 'package:driver_app/features/bootstrap/domain/entities/station/station.dart';
import 'package:driver_app/features/bootstrap/presentation/providers/settings_provider.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/dispatch_ride_usecase.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/get_ack_dispatch_usecase.dart';
import 'package:driver_app/features/dispatcher/presentation/notifiers/parser_util.dart';
import 'package:driver_app/features/dispatcher/presentation/providers/summary_dispatches_provider.dart';
import 'package:driver_app/features/dispatcher/presentation/states/form_dispatch_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormDispatchNotifier extends StateNotifier<DispatchState> {
  final Ref ref;
  final DispatchNewRideUsecase dispatchNewRideUsecase;
  final GetAckDispatchUsecase getAckDispatch;
  FormDispatchNotifier(
    this.dispatchNewRideUsecase,
    this.ref,
    this.getAckDispatch,
  ) : super(
        DispatchState.initial(ref),
      );
  void resetForm() {
    state = DispatchState.initial(
      ref,
    );
  }

  void onChangeStation(Station station) {
    state = state.copyWith(station: station);
  }

  Future<void> addRide(String text) async {
    state = state.copyWith(isLoading: true);
    ref.read(settingsProvider.notifier).updateDefaultStation(state.station);
    try {
      final result = parseRideFromText(text, state.station.station_id);

      if (!result.isSuccess) {
        state = state.copyWith(isLoading: false, errorMessage: result.error);
        return;
      }

      final ride = result.ride!;

      dispatchNewRideUsecase(ride);
      final ack = await getAckDispatch(ride.id);
      if (ack) {
        ref.read(summaryRidesProvider.notifier).addDispatch(ride);
        state = state.copyWith(send: true, isLoading: false);
      } else {
        state = state.copyWith(
          isLoading: false,
          errorMessage: 'לא הצלחנו לשלוח את הנסיעה, נסה שוב מאוחר יותר.',
        );
      }
    } catch (e) {
      state = state.copyWith(
        send: false,
        isLoading: false,
        errorMessage: 'שגיאה בשליחת נסיעה: $e',
      );
    }
  }
}
