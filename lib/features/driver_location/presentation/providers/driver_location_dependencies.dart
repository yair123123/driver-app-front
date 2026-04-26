import 'package:driver_app/features/driver_location/data/datasources/device_location_data_source.dart';
import 'package:driver_app/features/driver_location/data/repositories/driver_location_repository_impl.dart';
import 'package:driver_app/features/driver_location/domain/entities/driver_location.dart';
import 'package:driver_app/features/driver_location/domain/repositories/driver_location_repository.dart';
import 'package:driver_app/features/driver_location/domain/usecases/get_current_driver_location_use_case.dart';
import 'package:driver_app/features/driver_location/domain/usecases/watch_driver_location_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final deviceLocationDataSourceProvider = Provider<DeviceLocationDataSource>((
  ref,
) {
  return DeviceLocationDataSource();
});

final driverLocationRepositoryProvider = Provider<DriverLocationRepository>((
  ref,
) {
  return DriverLocationRepositoryImpl(
    ref.watch(deviceLocationDataSourceProvider),
  );
});

final getCurrentDriverLocationUseCaseProvider =
    Provider<GetCurrentDriverLocationUseCase>((ref) {
      return GetCurrentDriverLocationUseCase(
        ref.watch(driverLocationRepositoryProvider),
      );
    });

final watchDriverLocationUseCaseProvider = Provider<WatchDriverLocationUseCase>(
  (ref) {
    return WatchDriverLocationUseCase(
      ref.watch(driverLocationRepositoryProvider),
    );
  },
);

final currentDriverLocationProvider = StateProvider<DriverLocation?>((ref) {
  return null;
});

final driverLocationProvider = currentDriverLocationProvider;
