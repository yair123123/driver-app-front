import 'package:driver_app/features/ride_hub/presentation/controllers/station_ride_list_controller.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_providers.dart';
import 'package:driver_app/features/stations/presentation/providers/stations_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widget/asynv_body_helper.dart';

class StationRideListScreen extends ConsumerWidget {
  const StationRideListScreen({super.key, required this.stationId});

  final int stationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(StationRideListControllerProvider(stationId));
    return AsyncBody(
      value: asyncState,
      builder: (state) {
        return RefreshIndicator(
          onRefresh: ref.read(ridesControllerProvider.notifier).refresh,
          child: ListView.builder(
            itemCount: state.rides.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return ListTile(
                  title: Text(state.station.name),
                  subtitle: Text('${state.rides.length} rides'),
                );
              }

              final ride = state.rides[index - 1];

              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  title: Text(
                    '${ride.origin.city} -> ${ride.destination.city}',
                  ),
                  subtitle: Text(ride.comments),
                  trailing: Text(ride.price),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
