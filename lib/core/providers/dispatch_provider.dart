import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:driver_app/features/dispatcher/data/datasources/dispatcher_datasource.dart';
import 'package:driver_app/features/dispatcher/data/repositoy/dispatch_reposiroty_impl.dart';
import 'package:driver_app/features/dispatcher/domain/repositories/dispatch_repository.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/cancel_ride_usecase.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/dispatch_ride_usecase.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/initial_screen_usecase.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/update_ride_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final webSocketProvider = Provider<WebSocketService>(
  (ref) => WebSocketService(),
);
final datasourceProvider = Provider<DispatcherDatasource>(
  (ref) => DispatcherDatasource(ref.watch(webSocketProvider)),
);
final dispatchRepsitoryProvider = Provider<DispatchRepository>(
  (ref) => DispatchRepositoryImpl(ref.watch(datasourceProvider)),
);
final dispatchNewRideUseCaseProvider = Provider<DispatchNewRideUsecase>(
  (ref) => DispatchNewRideUsecase(ref.watch(dispatchRepsitoryProvider)),
);
final cancelRideUseCaseProvider = Provider<CancelRideUsecase>(
  (ref) => CancelRideUsecase(ref.watch(dispatchRepsitoryProvider)),
);
final updateRideUseCaseProvider = Provider<UpdateRideUsecase>(
  (ref) => UpdateRideUsecase(ref.watch(dispatchRepsitoryProvider)),
);
final initialScreenUseCaseProvider = Provider<InitialScreenUsecase>(
  (ref) => InitialScreenUsecase(ref.watch(dispatchRepsitoryProvider)),
);
