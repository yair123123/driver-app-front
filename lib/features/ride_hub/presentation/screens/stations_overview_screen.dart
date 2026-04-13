import 'package:driver_app/core/widget/asynv_body_helper.dart';
import 'package:driver_app/features/auth/presentation/providers/auth_provider.dart';
import 'package:driver_app/features/ride_hub/presentation/controllers/station_overview_controller.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_providers.dart';
import 'package:driver_app/features/stations/presentation/providers/stations_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../controllers/station_ride_list_controller.dart';

class StationsOverviewScreen extends ConsumerWidget {
  const StationsOverviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(stationOverviewControllerProvider);
    return AsyncBody(
      value: stateAsync,
      builder: (state) {
        return RefreshIndicator(
          onRefresh: ref.read(ridesControllerProvider.notifier).refresh,
          child: ListView.builder(
            itemCount: state.items.length,
            itemBuilder: (context, index) {
              final station = state.items[index];
              final ridesCount = state.items[index].ridesCount;

              return ListTile(
                title: Text(station.stationName),
                subtitle: Text(station.stationName),
                trailing: Text('$ridesCount rides'),
                onTap: () => context.go('/rides/list/station/${station.stationId}'),
              );
            },
          ),
        );
      },
    );
  }
}

class _RidesErrorBody extends StatelessWidget {
  const _RidesErrorBody({required this.message, required this.onRetry});

  final String message;
  final Future<void> Function() onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(message),
          const SizedBox(height: 12),
          ElevatedButton(onPressed: onRetry, child: const Text('Retry')),
        ],
      ),
    );
  }
}
