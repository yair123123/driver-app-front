import 'package:driver_app/core/providers/user_provider.dart';
import 'package:driver_app/features/main/domein/entities/station.dart';

import 'package:driver_app/features/rides/domain/entities/ride.dart';
import 'package:driver_app/core/providers/rides_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GroupsNotifier extends StateNotifier<List<Station>> {
  GroupsNotifier() : super([]);
  
  void addRideToGroup(Ride ride, int groupId) {}
  void removeRideFromGroup(int rideId) {}
  void setGroups(List<Station> groups) {
    state = List<Station>.from(groups);
  }
}

final groupsProvider = StateNotifierProvider<GroupsNotifier, List<Station>>((ref) {
  final user = ref.read(userProvider).value;
  final initialGroups = user?.driver_stations ?? [];
  return GroupsNotifier()..setGroups(initialGroups);
});

final rideEventsListenerProvider = Provider<void>((ref) {
  ref.listen<AsyncValue<Ride>>(publishedRidesProvider, (prev, asyncRide) {
    asyncRide.whenData((ride) {
      ref.read(groupsProvider.notifier).addRideToGroup(ride, ride.stationId);
    });
  });

  ref.listen<AsyncValue<int>>(soldRidesProvider, (prev, asyncRideId) {
    asyncRideId.whenData((rideId) {
      ref.read(groupsProvider.notifier).removeRideFromGroup(rideId);
    });
  });
});