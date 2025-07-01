import 'package:driver_app/core/env/env.dart';
import 'package:driver_app/features/dispatcher/data/datasources/http_datasource.dart';
import 'package:driver_app/features/dispatcher/data/datasources/websocket_datasource.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/get_event_active_ride.dart';
import 'package:driver_app/features/dispatcher/presentation/notifiers/summary_dispatches_notifier.dart';
import 'package:driver_app/features/dispatcher/presentation/states/summary_dispatch_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:driver_app/core/websocket/websocket_provider.dart';
import 'package:driver_app/features/dispatcher/data/repositoy/dispatch_reposiroty_impl.dart';
import 'package:driver_app/features/dispatcher/domain/repositories/dispatch_repository.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/cancel_ride_usecase.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/dispatch_ride_usecase.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/get_ack_dispatch_usecase.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/initial_screen_usecase.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/update_ride_usecase.dart';

final websocketDatasourceProvider = Provider<WebsocketDatasource>(
  (ref) => WebsocketDatasource(ref.watch(webSocketServiceInstanceProvider)),
);
final httpDatasourceProvider = Provider<HttpDatasource>(
  (ref) => HttpDatasource(Env.authUrl),
);
final dispatchRepsitoryProvider = Provider<DispatchRepository>(
  (ref) => DispatchRepositoryImpl(
    ref.watch(httpDatasourceProvider),
    ref.watch(websocketDatasourceProvider),
  ),
);
final getAckDispatchUseCaseProvider = Provider<GetAckDispatchUsecase>(
  (ref) => GetAckDispatchUsecase(ref.watch(dispatchRepsitoryProvider)),
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

final getEventActiveRideUsecaseProvider = Provider<GetEventActiveRideUsecase>(
  (ref) => GetEventActiveRideUsecase(ref.watch(dispatchRepsitoryProvider)),
);

final summaryRidesProvider = StateNotifierProvider<
  SummaryDispatchesNotifier,
  List<SummaryDispatchState>
>(
  (ref) =>
      SummaryDispatchesNotifier(ref.watch(getEventActiveRideUsecaseProvider)),
);
