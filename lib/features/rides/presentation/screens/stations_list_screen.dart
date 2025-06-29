import 'package:driver_app/features/rides/presentation/providers/rides_list_provider.dart';
import 'package:driver_app/widgets/vip_tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class StationsListScreen extends ConsumerWidget {
  const StationsListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(rideNotifierProvider);
    final stations = state.stations;

    return ListView.builder(
      itemCount: stations.length,
      restorationId: 'stations_list_view',

      prototypeItem: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        title: Text("exapmle"),
        subtitle: Text("biggest componnet "),
      ),
      itemBuilder: (context, index) {
        final station = stations[index];
        final bool isVip = true;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: Stack(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                title: Text(station.station_name),
                subtitle: Text(
                  station.rides.isNotEmpty ? (station.rides.last.comments) : '',
                ),
                trailing: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '${station.rides.length} נסיעות',
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                onTap: () {
                  context.go('/rides/list/station/${station.station_id}');
                },
              ),
              if (isVip) const VipTag(),
            ],
          ),
        );
      },
    );
  }
}
