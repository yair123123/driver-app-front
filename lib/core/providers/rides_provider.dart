import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:driver_app/features/rides/data/datasources/rides_websocket_datasource.dart';
import 'package:driver_app/features/rides/data/repositories/ride_websocket_repository_impl.dart';
import 'package:driver_app/features/rides/domain/repositories/ride_websocket_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/rides/domain/usecases/listen_to_new_rides.dart';



final listenToNewRidesUseCaseProvider = Provider<ListenToNewEvents>((ref) {
  final rideRepository = ref.watch(rideRepositoryProvider);
  return ListenToNewEvents(rideRepository);
});

final rideRepositoryProvider = Provider<RideRepository>((ref) {
  final ridesDataSource = ref.watch(ridesWebSocketDatasourceProvider);
  return RideRepositoryImpl(ridesDataSource);
});

final ridesWebSocketDatasourceProvider = Provider<RidesWebSocketDatasource>((
  ref,
) {
  return RidesWebSocketDatasource(ref.watch(webSocketServiceProvider));
});

final webSocketServiceProvider = Provider<WebSocketService>((ref) {
  return WebSocketService();
});


