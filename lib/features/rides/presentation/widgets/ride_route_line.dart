
import 'package:driver_app/core/entities/ride.dart';
import 'package:flutter/material.dart';

class RideRouteLine extends StatelessWidget {
  final Ride ride;
  const RideRouteLine({super.key, required this.ride});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${ride.origin.neighborhood} → ${ride.destination.neighborhood}',
      style: const TextStyle(color: Colors.grey),
    );
  }
}
