import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/rides/data/datasources/rides_remote_data_source.dart';
import 'package:driver_app/features/rides/data/repositories/rides_repository_impl.dart';
import 'package:driver_app/features/rides/domain/repositories/rides_repository.dart';
import 'package:driver_app/features/rides/domain/usecases/get_rides_use_case.dart';
import 'package:driver_app/features/rides/presentation/states/rides_query.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ridesRemoteDataSourceProvider = Provider<RidesRemoteDataSource>((ref) {
  return RidesRemoteDataSource(ref.watch(apiClientProvider));
});

final ridesRepositoryProvider = Provider<RidesRepository>((ref) {
  return RidesRepositoryImpl(ref.watch(ridesRemoteDataSourceProvider));
});

final getRidesUseCaseProvider = Provider<GetRidesUseCase>((ref) {
  return GetRidesUseCase(ref.watch(ridesRepositoryProvider));
});

final ridesQueryProvider = StateProvider<RidesQuery>((ref) {
  return const RidesQuery();
});
