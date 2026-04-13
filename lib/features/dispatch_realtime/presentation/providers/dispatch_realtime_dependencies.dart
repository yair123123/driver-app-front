import 'package:driver_app/core/ws/providers/ws_providers.dart';
import 'package:driver_app/features/dispatch_realtime/data/datasources/dispatch_socket_remote_data_source.dart';
import 'package:driver_app/features/dispatch_realtime/data/repositories/dispatch_socket_repository_impl.dart';
import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_realtime_event.dart';
import 'package:driver_app/features/dispatch_realtime/domain/repositories/dispatch_socket_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dispatchSocketRemoteDataSourceProvider =
    Provider<DispatchSocketRemoteDataSource>((ref) {
  return DispatchSocketRemoteDataSource(
        ref.watch(socketConnectionManagerProvider),
        ref.watch(rideWsHandlerProvider).events,
      );
    });

final dispatchSocketRepositoryProvider = Provider<DispatchSocketRepository>((
  ref,
) {
  return DispatchSocketRepositoryImpl(
    ref.watch(dispatchSocketRemoteDataSourceProvider),
  );
});

final dispatchEventsProvider = StreamProvider<DispatchRealtimeEvent>((ref) {
  ref.watch(wsPipelineProvider);
  return ref.watch(rideWsHandlerProvider).events;
});
