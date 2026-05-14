import 'package:driver_app/features/dispatch_realtime/data/repositories/dispatch_realtime_repository_impl.dart';
import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_event.dart';
import 'package:driver_app/features/dispatch_realtime/domain/repositories/dispatch_realtime_repository.dart';
import 'package:driver_app/features/dispatch_realtime/presentation/controllers/dispatch_realtime_controller.dart';
import 'package:driver_app/features/realtime/presentation/providers/realtime_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dispatchRealtimeRepositoryProvider = Provider<DispatchRealtimeRepository>(
  (ref) {
    final realtimeRepository = ref.watch(realtimeRepositoryProvider);

    return DispatchRealtimeRepositoryImpl(
      realtimeRepository: realtimeRepository,
    );
  },
);

final dispatchRealtimeEventsProvider = StreamProvider<DispatchRealtimeEvent>((
  ref,
) {
  final repository = ref.watch(dispatchRealtimeRepositoryProvider);
  return repository.events;
});

final dispatchEventsProvider = dispatchRealtimeEventsProvider;

final dispatchRealtimeControllerProvider = NotifierProvider<
  DispatchRealtimeController,
  DispatchRealtimeControllerState
>(DispatchRealtimeController.new);
