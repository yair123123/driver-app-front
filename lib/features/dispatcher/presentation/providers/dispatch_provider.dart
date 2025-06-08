import 'package:driver_app/core/providers/dispatch_provider.dart';
import 'package:driver_app/core/providers/user_provider.dart';
import 'package:driver_app/features/dispatcher/presentation/notifiers/new_dispatch_notifier.dart';
import 'package:driver_app/features/dispatcher/presentation/states/form_dispatch_state.dart';
import 'package:driver_app/features/dispatcher/presentation/states/initial_screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dispatchNotifierProvider =
    StateNotifierProvider<FormDispatchNotifier, DispatchState>(
      (ref) => FormDispatchNotifier(ref),
    );

final FutureProvider<InitialScreenState> initialScreenProvider = FutureProvider((ref) async {
  final initialScreen = await ref.read(initialScreenUseCaseProvider)();
  final station = ref.read(userProvider).value!.dispatcher_stations;
  return InitialScreenState.fromModel(
    initialScreen: initialScreen,
    station: station,
  );
});
