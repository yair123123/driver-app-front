import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/driver_rides/data/datasources/driver_rides_remote_data_source.dart';
import 'package:driver_app/features/driver_rides/data/repositories/driver_rides_repository_impl.dart';
import 'package:driver_app/features/driver_rides/domain/repositories/driver_rides_repository.dart';
import 'package:driver_app/features/driver_rides/domain/usecases/get_driver_map_rides_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final driverRidesRemoteDataSourceProvider =
    Provider<DriverRidesRemoteDataSource>((ref) {
      return DriverRidesRemoteDataSourceImpl(ref.watch(apiClientProvider));
    });

final driverRidesRepositoryProvider = Provider<DriverRidesRepository>((ref) {
  return DriverRidesRepositoryImpl(
    remoteDataSource: ref.watch(driverRidesRemoteDataSourceProvider),
  );
});

final getDriverMapRidesUseCaseProvider = Provider<GetDriverMapRidesUseCase>((
  ref,
) {
  return GetDriverMapRidesUseCase(ref.watch(driverRidesRepositoryProvider));
});
