import 'package:driver_app/core/providers/dispatch_provider.dart';
import 'package:driver_app/core/providers/user_provider.dart';
import 'package:driver_app/features/dispatcher/domain/entities/dispatch_ride.dart';
import 'package:driver_app/features/dispatcher/presentation/states/form_dispatch_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormDispatchNotifier extends StateNotifier<DispatchState> {
  final Ref ref;

  FormDispatchNotifier(this.ref)
    : super(DispatchState.initial(ref.read(userProvider).value!));

  void onChange(TextEditingController controller) {
    final text = controller.text;
    final currentPosition = controller.selection.baseOffset;
    final lines = text.substring(0, currentPosition).split("\n");
    final currentLine = (lines.length - 1).clamp(0, 4);
    state = state.copyWith(indexCurrentLine: currentLine, rideDetails: text);
  }

  Future<void> addRide() async {
    final useCase = ref.read(dispatchNewRideUseCaseProvider);
    state = state.copyWith(isLoading: true);
    try {
      final rideDetails = state.rideDetails;
      final lines = rideDetails.split('\n');
      if (lines.length < 4) {
        state = state.copyWith(
          isSending: false,
          errorMessage:
              'אנא ודא שמילאת את כל 4  השדות: מוצא, יעד, מחיר, טלפון.',
        );
        return;
      }
      final origin = lines[0];
      final destination = lines[1];
      final cost = int.tryParse(lines[2]);
      if (cost == null) {
        state = state.copyWith(
          isSending: false,
          errorMessage: 'המחיר חייב להיות מספר.',
        );
        return;
      }
      final phone = lines[3];
      final moreDetails = lines.length > 4 ? lines.sublist(4).join('\n') : '';
      final dispatchRide = DispatchRide(
        origin: origin,
        destination: destination,
        cost: cost,
        phonePassenger: phone,
        moreDetails: moreDetails,
        stationId: state.station.station_id,
        timestamp: DateTime.now(),
      );
      useCase(dispatchRide);
      state = state.copyWith(isSending: true, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isSending: false,
        errorMessage: 'שגיאה בשליחת נסיעה: $e',
      );
    }
  }
}
