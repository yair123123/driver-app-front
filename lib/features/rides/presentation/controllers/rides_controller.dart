import 'package:driver_app/features/rides/presentation/providers/rides_dependencies.dart';
import 'package:driver_app/features/rides/presentation/states/rides_query.dart';
import 'package:driver_app/features/rides/presentation/states/rides_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RidesController extends AsyncNotifier<RidesState> {
  @override
  Future<RidesState> build() async {
    final query = ref.watch(ridesQueryProvider);
    final rides = await ref.watch(getRidesUseCaseProvider)(query);

    return RidesState(
      rides: rides,
      query: query,
      lastFetchedAt: DateTime.now(),
    );
  }

  Future<void> refresh() async {
    final query = ref.read(ridesQueryProvider);

    state = await AsyncValue.guard(() async {
      final rides = await ref.read(getRidesUseCaseProvider)(query);

      return RidesState(
        rides: rides,
        query: query,
        lastFetchedAt: DateTime.now(),
      );
    });
  }

  void updateQuery(RidesQuery query) {
    ref.read(ridesQueryProvider.notifier).state = query;
  }
}
