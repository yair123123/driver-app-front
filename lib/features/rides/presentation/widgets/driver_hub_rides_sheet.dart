import 'package:driver_app/features/rides/domain/entities/ride/ride_map_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DriverHubRidesSheet extends StatelessWidget {
  final List<RideMapItem> rides;
  final ValueChanged<RideMapItem> onRideTap;

  const DriverHubRidesSheet({
    super.key,
    required this.rides,
    required this.onRideTap,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.18,
      minChildSize: 0.12,
      maxChildSize: 0.65,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
            boxShadow: const [
              BoxShadow(
                blurRadius: 16,
                offset: Offset(0, -4),
                color: Colors.black26,
              ),
            ],
          ),
          child: ListView(
            controller: scrollController,
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 24),
            children: [
              Center(
                child: Container(
                  width: 44,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                    borderRadius: BorderRadius.circular(99),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              Text(
                'נסיעות באזור',
                style: Theme.of(context).textTheme.titleMedium,
              ),

              const SizedBox(height: 12),

              if (rides.isEmpty)
                const Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Center(child: Text('אין נסיעות להצגה כרגע')),
                )
              else
                ...rides.map(
                  (ride) => _RideTile(ride: ride, onTap: () => onRideTap(ride)),
                ),
            ],
          ),
        );
      },
    );
  }
}

class _RideTile extends HookWidget {
  final RideMapItem ride;
  final VoidCallback onTap;

  const _RideTile({required this.ride, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState(false);
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: const Icon(Icons.local_taxi),
        title: Text('נסיעה #${ride.id}'),
        subtitle: Text(ride.originCity ?? 'כתובת מוצא לא זמינה'),
        trailing:
            ride.priceAmount == null
                ? null
                : Text(
                  '₪${ride.priceAmount}',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
        onTap: () {
          isExpanded.value = !isExpanded.value;
          if (isExpanded.value) onTap();
        },
      ),
    );
  }
}
