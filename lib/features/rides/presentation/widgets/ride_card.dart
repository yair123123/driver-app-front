import 'package:driver_app/features/rides/presentation/providers/card_ride_provider.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:driver_app/core/entities/ride.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ride_actions.dart';
import 'ride_comments.dart';
import 'ride_time_stamp.dart';
import 'ride_header.dart';
import 'ride_route_line.dart';

class RideCard extends ConsumerWidget {
  final bool isRideActive;
  final Ride ride;

  const RideCard({super.key, required this.isRideActive, required this.ride});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(cardRideProvider);
    final notifier = ref.watch(rideNotifierProvider.notifier);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child:
              isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RideHeader(ride: ride),
                      const SizedBox(height: 4),
                      RideRouteLine(ride: ride),
                      if (ride.comments.trim().isNotEmpty) ...[
                        const SizedBox(height: 8),
                        RideComments(comments: ride.comments),
                      ],
                      const SizedBox(height: 8),
                      RideTimestamp(timestamp: ride.timestamp),
                      const SizedBox(height: 8),
                      RideActions(
                        isRideActive: isRideActive,
                        ride: ride,
                        onGiveRide: notifier.giveRide,
                      ),
                    ],
                  ),
        ),
      ),
    );
  }
}
