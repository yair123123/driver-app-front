import 'package:driver_app/core/entities/ride.dart';
import 'package:driver_app/features/rides/presentation/widgets/give_dialog.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class RideWidget extends StatelessWidget {
  final bool isRideActive;
  final Ride ride;
  final void Function(Ride ride) giveRide;
  final VoidCallback? openDispatcherChat;

  const RideWidget({
    Key? key,
    required this.isRideActive,
    required this.ride,
    required this.giveRide,
    this.openDispatcherChat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'נסיעה מ־${ride.origin.city} ל־${ride.destination.city}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '${ride.price} ₪',
                    style: const TextStyle(color: Colors.green, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                '${ride.origin.neighborhood} → ${ride.destination.neighborhood}',
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 8),

              if (ride.comments.trim().isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    ride.comments.trim(),
                    style: const TextStyle(fontSize: 14),
                  ),
                ),

              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    _formatTimestamp(ride.timestamp),
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
              ),

              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed:
                      () => showDialog(
                        context: context,
                        builder:
                            (ctx) => GiveDialog(
                              isRideActive: isRideActive,
                              func: () => giveRide(ride),
                              
                              dispatcherId: 1,
                            ),
                      ),
                  child: const Text("פרטים"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatTimestamp(DateTime ts) =>
      '${ts.day}/${ts.month}/${ts.year} '
      '${ts.hour}:${ts.minute.toString().padLeft(2, '0')}';
}
