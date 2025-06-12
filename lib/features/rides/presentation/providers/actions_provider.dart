import 'package:driver_app/features/rides/domain/repositories/ride_websocket_repository.dart';
import 'package:driver_app/core/providers/rides_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RidesActionsNotifier extends StateNotifier<AsyncValue<void>> {
  RidesActionsNotifier(this._repo) : super(const AsyncData(null));
  final RideRepository _repo;

  Future<void> giveRide(String rideId) async {
    state = const AsyncLoading();
    try {
      await _repo.takeRide({"id":rideId});
      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}

final rideActionsProvider = StateNotifierProvider<RidesActionsNotifier, AsyncValue<void>>(
  (ref) => RidesActionsNotifier(ref.watch(rideRepositoryProvider)),
);
