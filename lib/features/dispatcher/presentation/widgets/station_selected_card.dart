import 'package:driver_app/features/stations/domain/entities/station.dart';
import 'package:flutter/material.dart';

class StationSelectionCard extends StatelessWidget {
  final List<Station> stations;
  final Station? selectedStation;
  final bool isInternal;
  final ValueChanged<Station?> onStationChanged;
  final ValueChanged<bool> onInternalChanged;

  const StationSelectionCard({
    super.key,
    required this.stations,
    required this.selectedStation,
    required this.isInternal,
    required this.onStationChanged,
    required this.onInternalChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: DropdownButton<Station>(
                value: selectedStation,
                isExpanded: true,
                items: [
                  for (final station in stations)
                    DropdownMenuItem<Station>(
                      value: station,
                      child: Text(station.name),
                    ),
                ],
                onChanged: onStationChanged,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              children: [
                const Text('נסיעה פנימית'),
                Switch(
                  value: isInternal,
                  onChanged: onInternalChanged,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}