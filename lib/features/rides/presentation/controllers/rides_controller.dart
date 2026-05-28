import 'package:driver_app/features/rides/domain/entities/ride_filter_params.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_dependencies.dart';
import 'package:driver_app/features/rides/presentation/states/rides_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RidesController extends AsyncNotifier<RidesState> {
  @override
  Future<RidesState> build() async {
    final filterParams = ref.watch(rideFilterParamsProvider);
    final rides = await ref.watch(getRidesUseCaseProvider)(filterParams);

    return RidesState(
      rides:
          rides.where(filterParams.matches).toList(growable: false),
      filterParams: filterParams,
      lastFetchedAt: DateTime.now(),
    );
  }

  Future<void> refresh() async {
    final filterParams = ref.read(rideFilterParamsProvider);

    state = await AsyncValue.guard(() async {
      final rides = await ref.read(getRidesUseCaseProvider)(filterParams);

      return RidesState(
        rides:
            rides.where(filterParams.matches).toList(growable: false),
        filterParams: filterParams,
        lastFetchedAt: DateTime.now(),
      );
    });
  }

  void updateFilters(RideFilterParams filterParams) {
    ref.read(rideFilterParamsProvider.notifier).state = filterParams;
  }
}
