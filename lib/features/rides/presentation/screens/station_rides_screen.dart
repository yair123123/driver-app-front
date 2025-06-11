
import 'package:driver_app/features/rides/presentation/providers/actions_provider.dart';
import 'package:driver_app/features/rides/presentation/states/station_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GroupChatScreen extends ConsumerWidget {
  final StationState  station;

  const GroupChatScreen({super.key, required this.station});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(station.station.station_name)),
      body:
          station.rides.isEmpty
              ? const Center(child: Text('אין הודעות להצגה.'))
              : ListView.builder(
                itemCount: station.rides.length,
                itemBuilder: (context, index) {
                  final ride = station.rides[index];
                  return ListTile(
                    title: Text('נסיעה #${ride.id}'),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(ride.comments),
                        Text(
                          _formatTimestamp(ride.timestamp),
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    leading: ElevatedButton(
                      onPressed:
                          () => ref
                              .read(rideActionsProvider.notifier)
                              .giveRide(ride.id),
                      child: const Text("תן"),
                    ),
                  );
                },
              ),
    );
  }
}

String _formatTimestamp(DateTime timestamp) {
  return '${timestamp.day}/${timestamp.month}/${timestamp.year} ${timestamp.hour}:${timestamp.minute.toString().padLeft(2, '0')}';
}
