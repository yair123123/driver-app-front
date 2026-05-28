import 'package:driver_app/features/rides/domain/entities/ride/ride_map_item.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RidesListScreen extends ConsumerWidget {
  const RidesListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ridesState = ref.watch(ridesControllerProvider);

    return ridesState.when(
      data: (state) {
        return RefreshIndicator(
          onRefresh: () => ref.read(ridesControllerProvider.notifier).refresh(),
          child: ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16),
            itemCount: state.rides.length,
            separatorBuilder: (_, __) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              return _RideListTile(ride: state.rides[index]);
            },
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error:
          (error, _) => Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(error.toString(), textAlign: TextAlign.center),
            ),
          ),
    );
  }
}

class _RideListTile extends StatelessWidget {
  const _RideListTile({required this.ride});

  final RideMapItem ride;

  @override
  Widget build(BuildContext context) {
    final subtitleParts = [
      ride.displayDestinationTitle,
      ride.displayStationName,
      ride.displayPrice,
    ].where((part) => part != null && part.isNotEmpty).cast<String>();

    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: Theme.of(context).dividerColor),
      ),
      title: Text(
        ride.displayOriginTitle.isEmpty ? '#${ride.id}' : ride.displayOriginTitle,
      ),
      subtitle:
          subtitleParts.isEmpty ? null : Text(subtitleParts.join(' | ')),
      trailing: Text(ride.status.apiValue),
    );
  }
}
