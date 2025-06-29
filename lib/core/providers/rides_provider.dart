import 'package:driver_app/core/websocket/websocket_provider.dart';
import 'package:driver_app/features/rides/data/datasources/rides_websocket_datasource.dart';
import 'package:driver_app/features/rides/data/repositories/ride_websocket_repository_impl.dart';
import 'package:driver_app/features/rides/domain/repositories/ride_websocket_repository.dart';
import 'package:driver_app/features/rides/domain/usecases/cancel_ride_usecase.dart';
import 'package:driver_app/features/rides/domain/usecases/complete_ride.dart';
import 'package:driver_app/features/rides/domain/usecases/give_ride_usecase.dart';
import 'package:driver_app/features/rides/domain/usecases/pickup.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/rides/domain/usecases/listen_to_new_rides.dart';

final confirmGiveRideUsecaseProvider = Provider<ConfirmGiveRideUsecase>(
  (ref) =>
      ConfirmGiveRideUsecase(rideRepository: ref.watch(rideRepositoryProvider)),
);
final confirmfinishingRideUsecaseProvider = Provider<ConfirmFinishingRideUsecase>(
  (ref) =>
      ConfirmFinishingRideUsecase(rideRepository: ref.watch(rideRepositoryProvider)),
);
final confirmPickUpUsecaseProvider = Provider<ConfirmGiveRideUsecase>(
  (ref) =>
      ConfirmGiveRideUsecase(rideRepository: ref.watch(rideRepositoryProvider)),
);  

final giveRideUsecaseProvider = Provider<GiveRideUsecase>(
  (ref) => GiveRideUsecase(ref.watch(rideRepositoryProvider)),
);
final listenToNewRidesUseCaseProvider = Provider<ListenToNewEventsUsecase>(
  (ref) => ListenToNewEventsUsecase(ref.watch(rideRepositoryProvider)),
);

final rideRepositoryProvider = Provider<RideRepository>(
  (ref) => RideRepositoryImpl(ref.watch(ridesWebSocketDatasourceProvider)),
);

final ridesWebSocketDatasourceProvider = Provider<RidesWebSocketDatasource>(
  (ref) =>
      RidesWebSocketDatasource(ref.watch(webSocketServiceInstanceProvider)),
);
final completeRideUsecaseProvider = Provider<CompleteRideUsecase>(
  (ref) => CompleteRideUsecase(ref.watch(rideRepositoryProvider)),
);
final pickUpUsecaseProvider = Provider<PickupUsecase>(
  (ref) => PickupUsecase(ref.watch(rideRepositoryProvider)),
);
final cancelRideUsecaseProvider = Provider<CancelRideUsecase>(
  (ref) => CancelRideUsecase(ref.watch(rideRepositoryProvider)),
);
