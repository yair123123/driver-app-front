import 'package:driver_app/core/entities/ride.dart';
import 'package:flutter/material.dart';

class RideWidget extends StatelessWidget{
  late final  Ride ride;
  late final  Function giveRide;
  RideWidget({super.key, required this.ride, required this.giveRide});
  Widget build(BuildContext context){
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
          // שורה עליונה
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'נסיעה מ־${ride.origin.city} ל־${ride.destination.city}',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                '${ride.price} ₪',
                style: const TextStyle(color: Colors.green, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 4),
          // אזור שכונה
          Text(
            '${ride.origin.neighborhood} → ${ride.destination.neighborhood}',
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 8),

          // טלפון והערות
          if (ride.passengerPhone.isNotEmpty)
            Row(
              children: [
                const Icon(Icons.phone, size: 16, color: Colors.blueGrey),
                const SizedBox(width: 6),
                Text(ride.passengerPhone),
              ],
            ),
          if (ride.comments.trim().isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                ride.comments.trim(),
                style: const TextStyle(fontSize: 14),
              ),
            ),

          // תאריך
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
          // כפתור תן
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () =>giveRide(ride.id),
              child: const Text("תן"),
            ),
          ),
        ],
      ),
    ),
  ),
);

  }
}

String _formatTimestamp(DateTime timestamp) {
  return '${timestamp.day}/${timestamp.month}/${timestamp.year} ${timestamp.hour}:${timestamp.minute.toString().padLeft(2, '0')}';
}