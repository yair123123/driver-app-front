import 'package:driver_app/features/bootstrap/domain/entities/ride/ride.dart';
import 'package:flutter/material.dart';

class RideHeader extends StatelessWidget {
  final Ride ride;
  const RideHeader({super.key, required this.ride});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            'נסיעה מ־${ride.origin.city} ל־${ride.destination.city}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          '${ride.price} ₪',
          style: const TextStyle(color: Colors.green, fontSize: 16),
        ),
      ],
    );
  }
}
