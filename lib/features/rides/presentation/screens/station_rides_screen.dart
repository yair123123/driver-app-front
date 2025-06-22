import 'package:driver_app/features/main/presentation/providers/app_provider.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_list_provider.dart';
import 'package:driver_app/features/rides/presentation/states/ride_state.dart';
import 'package:driver_app/features/rides/presentation/widgets/access_give_dialog.dart';
import 'package:driver_app/features/rides/presentation/widgets/ride_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StationRidesScreen extends ConsumerWidget {
  final int stationId;

  const StationRidesScreen({super.key, required this.stationId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
     
    final bool isRideActive = ref.watch(appInitialProvider).isRideActive;
    final station = ref.watch(
      rideNotifierProvider.select(
        (s) => s.stations.firstWhere((a) => a.station_id == stationId),
      ),
    );
    ref.listen<RideState>(rideNotifierProvider, (previous, next) {
      if (previous?.errorMessage != next.errorMessage &&
          next.errorMessage != null) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(next.errorMessage!)));
      }
      if (previous?.selectedRide == null && next.selectedRide != null ) {
        showDialog(context: context, builder: (ctx) => 
        AccessGiveDialog(phone: next.selectedRide!.passengerPhone));
      }
    });
    final state = ref.watch(rideNotifierProvider);
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    return Scaffold(
      appBar: AppBar(title: Text(station.station_name)),
      body:
          station.rides.isEmpty
              ? const Center(child: Text('אין הודעות להצגה.'))
              : ListView.builder(
                itemCount: station.rides.length,
                itemBuilder: (context, index) {
                  final ride = station.rides[index];
                  return RideWidget(
                    isRideActive: isRideActive,
                    ride: ride,
                    giveRide: (ride) {
                      ref.read(rideNotifierProvider.notifier).giveRide(ride);
                    },
                  );
                },
              ),
    );
  }
}
