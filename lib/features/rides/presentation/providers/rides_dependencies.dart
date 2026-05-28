import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/rides/data/datasources/rides_remote_data_source.dart';
import 'package:driver_app/features/rides/data/repositories/rides_repository_impl.dart';
import 'package:driver_app/features/rides/domain/entities/ride_filter_params.dart';
import 'package:driver_app/features/rides/domain/repositories/rides_repository.dart';
import 'package:driver_app/features/rides/domain/usecases/get_rides_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ridesRemoteDataSourceProvider = Provider<RidesRemoteDataSource>((ref) {
  return RidesRemoteDataSourceImpl(ref.watch(apiClientProvider));
});

final ridesRepositoryProvider = Provider<RidesRepository>((ref) {
  return RidesRepositoryImpl(
    remoteDataSource: ref.watch(ridesRemoteDataSourceProvider),
  );
});

final getRidesUseCaseProvider = Provider<GetRidesUseCase>((ref) {
  return GetRidesUseCase(ref.watch(ridesRepositoryProvider));
});

final rideFilterParamsProvider = StateProvider<RideFilterParams>((ref) {
  return const RideFilterParams();
});
