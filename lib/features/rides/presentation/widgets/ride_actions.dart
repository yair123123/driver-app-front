import 'package:driver_app/features/bootstrap/domain/entities/ride/ride.dart';
import 'package:flutter/material.dart';

class RideActions extends StatelessWidget {
  final bool isRideActive;
  final Ride ride;
  final bool isLoading;
  final VoidCallback onGiveRide;

  const RideActions({
    super.key,
    required this.isLoading,
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
          onPressed: isRideActive ? null : onGiveRide,
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
