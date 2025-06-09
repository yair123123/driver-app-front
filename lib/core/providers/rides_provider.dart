import 'package:driver_app/core/entities/ride.dart';
import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:driver_app/features/rides/data/datasources/rides_websocket_datasource.dart';
import 'package:driver_app/features/rides/data/repositories/ride_websocket_repository_impl.dart';
import 'package:driver_app/features/rides/domain/repositories/ride_websocket_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/rides/domain/usecases/listen_to_new_rides.dart';
import '../../features/rides/domain/entities/ride_dto.dart';

final listenToNewRidesProvider = StreamProvider<RideDto>((ref) {
  final listenToNewRides = ref.watch(listenToNewRidesUseCaseProvider);
  return listenToNewRides();
});

final listenToNewRidesUseCaseProvider = Provider<ListenToNewRides>((ref) {
  final rideRepository = ref.watch(rideRepositoryProvider);
  return ListenToNewRides(rideRepository);
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

final publishedRidesProvider = StreamProvider<Ride>((ref) {
  final allRidesStream = ref.watch(listenToNewRidesProvider);

  return allRidesStream.when(
    data:
        (rideDto) =>
            rideDto.typeCode == 11
                ? Stream.value(Ride.fromJson(rideDto.content))
                : const Stream.empty(),
    loading: () => const Stream.empty(),
    error: (error, stackTrace) => const Stream.empty(),
  );
});

final soldRidesProvider = StreamProvider<int>((ref) {
  final allRidesStream = ref.watch(listenToNewRidesProvider);
  return allRidesStream.when(
    data:
        (dto) =>
            dto.typeCode == 13
                ? Stream.value(dto.content["id"] as int)
                : const Stream.empty(),
    loading: () => const Stream.empty(),
    error: (error, stackTrace) => const Stream.empty(),
  );
});
