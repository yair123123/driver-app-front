import 'package:driver_app/core/entities/ride.dart';
import 'package:driver_app/features/rides/presentation/widgets/give_dialog.dart';
import 'package:flutter/material.dart';

class RideActions extends StatelessWidget {
  final bool isRideActive;
  final Ride ride;
  final void Function(Ride) onGiveRide;
  final VoidCallback? onOpenDispatcherChat;

  const RideActions({
    super.key,
    required this.isRideActive,
    required this.ride,
    required this.onGiveRide,
    this.onOpenDispatcherChat,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        child: const Text('פרטים'),
        onPressed: () => showDialog(
          context: context,
          builder: (_) => GiveDialog(
            isRideActive: isRideActive,
            onGive: () => onGiveRide(ride),
            dispatcherId:  1,
            onChatPressed: onOpenDispatcherChat,
          ),
        ),
      ),
    );
  }
}
