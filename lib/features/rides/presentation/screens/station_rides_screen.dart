
import 'package:driver_app/features/rides/presentation/providers/actions_provider.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GroupChatScreen extends ConsumerWidget {
  final int groupId;

  const GroupChatScreen({super.key, required this.groupId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final group = ref.watch(groupsProvider).firstWhere((g) => g.station_id == groupId);
    return Scaffold(
      appBar: AppBar(title: Text(group.station_name)),
      body:
          group.rides.isEmpty
              ? const Center(child: Text('אין הודעות להצגה.'))
              : ListView.builder(
                itemCount: group.rides.length,
                itemBuilder: (context, index) {
                  final ride = group.rides[index];
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
  // עיצוב דוגמה – תוכל לעצב לפי הצורך
  return '${timestamp.day}/${timestamp.month}/${timestamp.year} ${timestamp.hour}:${timestamp.minute.toString().padLeft(2, '0')}';
}
