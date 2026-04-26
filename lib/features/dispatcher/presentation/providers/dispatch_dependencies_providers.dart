import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/dispatch_realtime/presentation/providers/dispatch_realtime_providers.dart';
import 'package:driver_app/features/dispatcher/data/datasources/api_remote_data_source.dart';
import 'package:driver_app/features/dispatcher/data/datasources/websocket_datasource.dart';
import 'package:driver_app/features/dispatcher/data/repositoy/dispatch_reposiroty_impl.dart';
import 'package:driver_app/features/dispatcher/domain/repositories/dispatch_repository.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/cancel_ride_usecase.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/dispatch_ride_usecase.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/get_event_active_ride.dart';
import 'package:driver_app/features/dispatcher/domain/usecases/update_ride_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/usecases/create_ride_from_form_use_case.dart';

final websocketDatasourceProvider = Provider<WebsocketDatasource>(
  (ref) => WebsocketDatasource(ref.watch(dispatchSocketRepositoryProvider)),
);

final apiRemoteDataSourceProvider = Provider<ApiRemoteDataSource>(
  (ref) => ApiRemoteDataSource(ref.watch(apiClientProvider)),
);

final dispatchRepositoryProvider = Provider<DispatchRepository>(
  (ref) => DispatchRepositoryImpl(
    ref.watch(websocketDatasourceProvider),
    ref.watch(apiRemoteDataSourceProvider),
  ),
);

final dispatchNewRideUseCaseProvider = Provider<DispatchNewRideUseCase>(
  (ref) => DispatchNewRideUseCase(ref.watch(dispatchRepositoryProvider)),
);

final cancelRideUseCaseProvider = Provider<CancelRideUsecase>(
  (ref) => CancelRideUsecase(ref.watch(dispatchRepositoryProvider)),
);
//
// final updateRideUseCaseProvider = Provider<UpdateRideUseCase>(
//   (ref) => UpdateRideUseCase(ref.watch(dispatchRepositoryProvider)),
// );

final getEventActiveRideUsecaseProvider = Provider<GetEventActiveRideUsecase>(
  (ref) => GetEventActiveRideUsecase(ref.watch(dispatchRepositoryProvider)),
);

final createRideFromFormUsecaseProvider = Provider<CreateRideFromFormUsecase>(
  (_) => const CreateRideFromFormUsecase(),
);
