import 'package:driver_app/core/entities/ride.dart';
import 'package:flutter/material.dart';

class RideActions extends StatelessWidget {
  final bool isRideActive;
  final Ride ride;
  final void Function(Ride) onGiveRide;

  const RideActions({
    super.key,
    required this.isRideActive,
    required this.ride,
    required this.onGiveRide,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        children: [
          ElevatedButton(
            child: const Text('תן'),
            onPressed: isRideActive ? null : () =>  onGiveRide(ride),
          ),
          TextButton(
            child: const Text('צאט עם הסדרן'),
            onPressed:
                () => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("צריך לקבל ID מהשרת ולהעביר למסך צאט"),
                  ),
                ),
          ),
        ],
      ),
    );
  }
}
