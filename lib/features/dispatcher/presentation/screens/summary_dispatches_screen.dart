import 'package:driver_app/features/dispatcher/presentation/providers/summary_dispatches_provider.dart';
import 'package:driver_app/features/dispatcher/presentation/states/summary_dispatch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SummaryDispatchesScreen extends ConsumerWidget {
  const SummaryDispatchesScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<SummaryDispatchState> rides = ref.watch(summaryRidesProvider);


    return Scaffold(
      appBar: AppBar(
        title: Text('סיכום נסיעות'),
      ),
      body: rides.isEmpty
          ? Center(child: Text("לא נמצאו נסיעות"))
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: rides.length,
              separatorBuilder: (_, __) => const SizedBox(height: 16),
              itemBuilder: (context, i) {
                final ride = rides[i];
                return Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  shadowColor: Theme.of(context).colorScheme.primary.withOpacity(0.18),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.directions_car, color: Theme.of(context).colorScheme.primary),
                            const SizedBox(width: 8),
                            Text(
                              "נסיעה #${ride.id.substring(0,6)}",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const Spacer(),
                            Chip(
                              label: Text(
                                ride.status.name,
                                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                  color: Theme.of(context).colorScheme.onPrimary,
                                ),
                              ),
                              backgroundColor: Theme.of(context).colorScheme.primary,
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        Row(
                          children: [
                            Icon(Icons.place, size: 20, color: Theme.of(context).colorScheme.secondary),
                            const SizedBox(width: 4),
                            Expanded(
                              child: Text(
                                "מוצא: ${ride.origin}",
                                style: Theme.of(context).textTheme.bodyMedium,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(Icons.flag, size: 20, color: Theme.of(context).colorScheme.tertiary),
                            const SizedBox(width: 4),
                            Expanded(
                              child: Text(
                                "יעד: ${ride.destination}",
                                style: Theme.of(context).textTheme.bodyMedium,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.person, size: 20, color: Theme.of(context).colorScheme.secondary),
                            const SizedBox(width: 4),
                            Text(
                              "נהג: ${ride.driverName ?? "לא שובץ"}",
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        if (ride.driverName != null)
                          Align(
                            alignment: Alignment.centerLeft,
                            child: ElevatedButton.icon(
                              onPressed: () => context.go('chats/driverId'),
                              icon: Icon(Icons.chat),
                              label: Text("עבור לצ'אט"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(context).colorScheme.primary,
                                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
