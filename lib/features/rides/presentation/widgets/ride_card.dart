import 'package:driver_app/features/bootstrap/domain/entities/ride/ride.dart';
import 'package:driver_app/features/rides/presentation/providers/rides_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ride_actions.dart';
import 'ride_comments.dart';
import 'ride_time_stamp.dart';
import 'ride_header.dart';
import 'ride_route_line.dart';

class RideCard extends ConsumerStatefulWidget {
  final bool isRideActive;
  final Ride ride;

  const RideCard({super.key, required this.isRideActive, required this.ride});

  @override
  ConsumerState<RideCard> createState() => _RideCardState();
}

class _RideCardState extends ConsumerState<RideCard> {
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.watch(rideNotifierProvider.notifier);
    void onPressGiveRide() async {
      setState(() {
        isLoading = true;
      });
      await notifier.giveRide(widget.ride);
      setState(() {
        isLoading = false;
      });
    }

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
                      RideHeader(ride: widget.ride),
                      const SizedBox(height: 4),
                      RideRouteLine(ride: widget.ride),
                      if (widget.ride.comments.trim().isNotEmpty) ...[
                        const SizedBox(height: 8),
                        RideComments(comments: widget.ride.comments),
                      ],
                      const SizedBox(height: 8),
                      RideTimestamp(timestamp: widget.ride.timestamp),
                      const SizedBox(height: 8),
                      RideActions(
                        isRideActive: widget.isRideActive,
                        ride: widget.ride,
                        onGiveRide: onPressGiveRide,
                        isLoading: isLoading,
                      ),
                    ],
                  ),
        ),
      ),
    );
  }
}
