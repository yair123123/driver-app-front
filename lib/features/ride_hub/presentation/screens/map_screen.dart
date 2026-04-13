import 'package:driver_app/core/widget/asynv_body_helper.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MapScreen extends ConsumerWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ridesAsync = ref.watch(ridesControllerProvider);

    return AsyncBody(
      value: ridesAsync,
      builder: (rides) {

        return RefreshIndicator(
          onRefresh: ref.read(ridesControllerProvider.notifier).refresh,
          child: ListView(
            children: [
              ListTile(
                title: const Text('Map view'),
                subtitle: Text('${rides.rides.length} rides loaded from HTTP'),
              ),
              for (final ride in rides.rides)
                ListTile(
                  leading: const Icon(Icons.location_on_outlined),
                  title: Text(
                    '${ride.origin.city} -> ${ride.destination.city}',
                  ),
                  subtitle: Text(ride.comments),
                ),
            ],
          ),
        );
      },
    );
  }
}
