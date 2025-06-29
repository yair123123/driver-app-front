import 'package:driver_app/core/app/app_state_notifier.dart';
import 'package:driver_app/core/providers/dispatch_provider.dart';
import 'package:driver_app/features/dispatcher/presentation/notifiers/form_dispatch_notifier.dart';
import 'package:driver_app/features/dispatcher/presentation/notifiers/logic_screen_notifier.dart';
import 'package:driver_app/features/dispatcher/presentation/states/form_dispatch_state.dart';
import 'package:driver_app/features/dispatcher/presentation/states/initial_screen_state.dart';
import 'package:driver_app/features/dispatcher/presentation/states/logic_screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dispatchNotifierProvider =
    StateNotifierProvider<FormDispatchNotifier, DispatchState>(
      (ref) => FormDispatchNotifier(
        ref.watch(dispatchNewRideUseCaseProvider),
        ref,
        ref.watch(getAckDispatchUseCaseProvider),
      ),
    );
final logicScreenNotifierProvider =
    StateNotifierProvider<LogicScreenNotifier, LogicScreenState>(
      (ref) => LogicScreenNotifier(ref),
    );

final FutureProvider<InitialScreenState> initialScreenProvider = FutureProvider(
  (ref) async {
    final initialScreen = await ref.read(initialScreenUseCaseProvider)();
    final stations = ref.read(appStateNotifierProvider).user!.dispatcher_stations;
    return InitialScreenState.fromModel(
      initialScreen: initialScreen,
      stations: stations,
    );
  },
);
