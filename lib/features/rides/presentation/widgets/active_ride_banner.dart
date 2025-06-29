import 'package:driver_app/core/enums/ride_step.dart';
import 'package:driver_app/features/rides/presentation/providers/active_ride_provider.dart';
import 'package:driver_app/features/rides/presentation/states/ative_ride_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActiveRideBanner extends ConsumerWidget {
  const ActiveRideBanner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(activeRideProvider);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder:
          (child, anim) =>
              SizeTransition(sizeFactor: anim, axisAlignment: -1, child: child),
      child:
          !state.hasValue
              ? const SizedBox.shrink()
              : _BannerContent(key: const ValueKey('banner'), state: state),
    );
  }
}

class _BannerContent extends ConsumerWidget {
  const _BannerContent({required this.state, super.key});
  final AsyncValue<ActiveRideState?> state;

  void _showDetails(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => _RideDetailsDialog(state: state, ref: ref),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return state.when(
      data: (a) {
        if (a == null) {
          return const SizedBox.shrink();
        }
        final ride = a.ride;
        final notifier = ref.read(activeRideProvider.notifier);
        return GestureDetector(
          onTap: () => _showDetails(context, ref),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: kElevationToShadow[2],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "נסיעה מ־${ride.origin.city} ל־${ride.destination.city}",
                        style: Theme.of(context).textTheme.titleMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    ElevatedButton(
                      onPressed:
                          () => ref.read(activeRideProvider.notifier).next(),
                      child: Text(notifier.getData.$2),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      error:
          (error, stack) => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "שגיאה: $error",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    ref.read(activeRideProvider.notifier).next();
                  },
                  child: const Text("נסה שוב"),
                ),
              ],
            ),
          ),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

class _RideDetailsDialog extends StatelessWidget {
  const _RideDetailsDialog({required this.state, required this.ref});
  final AsyncValue<ActiveRideState?> state;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return state.when(
      data: (state) {
        if (state == null) {
          return const SizedBox.shrink();
        }
        final ride = state.ride;

        final notifier = ref.read(activeRideProvider.notifier);
        return AlertDialog(
          title: Text("נסיעה מ־${ride.origin.city} ל־${ride.destination.city}"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(notifier.getData.$1),
              const SizedBox(height: 16),
              Text("מחיר: ₪${ride.price}"),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    ref.read(activeRideProvider.notifier).next();
                    Navigator.of(context).pop();
                  },
                  child: Text(notifier.getData.$2),
                ),
              ),
              const SizedBox(height: 8),
              if (state.step == RideNextStep.pickup)
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          ref.read(activeRideProvider.notifier).cancel();
                          Navigator.of(context).pop();
                        },
                        child: const Text("בטל תן"),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: OutlinedButton(
                        onPressed:
                            () =>
                                ref
                                    .read(activeRideProvider.notifier)
                                    .callPassenger(),
                        child: const Text("חייג לנוסע"),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        );
      },
      error:
          (error, stack) => Center(
            child: Text(
              "שגיאה: $error",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
