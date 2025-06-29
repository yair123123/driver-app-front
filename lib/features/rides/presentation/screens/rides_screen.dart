import 'package:collection/collection.dart';
import 'package:driver_app/core/app/app_state_notifier.dart';
import 'package:driver_app/features/bootstrap/domain/entities/ride/ride.dart';          
import 'package:driver_app/features/rides/presentation/providers/rides_list_provider.dart';
import 'package:driver_app/features/rides/presentation/states/ride_state.dart';
import 'package:driver_app/features/rides/presentation/widgets/access_give_dialog.dart';
import 'package:driver_app/features/rides/presentation/widgets/ride_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StationRidesScreen extends ConsumerWidget {
  final int stationId;
  const StationRidesScreen({super.key, required this.stationId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isRideActive = ref.watch(appStateNotifierProvider).activeRide;
    final station = ref.watch(
      rideNotifierProvider.select(
        (s) => s.stations.firstWhereOrNull(
          (st) => st.station_id == stationId,
        ),
      ),
    );

    ref.listen<RideState>(
      rideNotifierProvider,
      (previous, next) {
        if (next.errorMessage != null &&
            previous?.errorMessage != next.errorMessage) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(next.errorMessage!)),
          );
        }

        if (previous?.selectedRide == null && next.selectedRide != null) {
          showDialog(
            context: context,
            builder: (_) =>
                AccessGiveDialog(phone: next.selectedRide!.passengerPhone),
          );
        }
      },
    );

    

    if (station == null) {
      return const Scaffold(
        body: Center(child: Text('התחנה אינה קיימת')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(station.station_name),
        
      ),
      body: station.rides.isEmpty
          ? const Center(child: Text('אין הודעות להצגה.'))
          : _buildRidesList(station.rides, isRideActive != null, ref),
    );
  }

  Widget _buildRidesList(
    List<Ride> rides,
    bool isRideActive,
    WidgetRef ref,
  ) {
    return ListView.builder(
      itemCount: rides.length,
      itemBuilder: (context, index) {
        final ride = rides[index];
        return RideCard(
          isRideActive: isRideActive,
          ride: ride,
        );
      },
    );
  }
}
