import 'package:collection/collection.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride.dart';
import 'package:driver_app/features/stations/presentation/providers/stations_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../rides/presentation/providers/rides_providers.dart';
import '../states/station_overview_state.dart';

part 'station_overview_controller.g.dart';

@riverpod
class StationOverviewController extends _$StationOverviewController {
  @override
  Future<StationOverviewState> build() async {
    final stations = await ref.watch(allStationsProvider.future);
    final rides = await ref.watch(ridesControllerProvider.future);

    final ridesByStation = groupBy<Ride, int?>(
      rides.rides,
      (ride) => ride.stationId,
    );

    final items = stations
        .map((station) {
          final stationRides = (ridesByStation[station.id] ?? const <Ride>[])
              .toList(growable: false);

          final lastComment = stationRides
              .map((ride) => ride.comments.trim())
              .firstWhereOrNull((comment) => comment.isNotEmpty);

          return StationOverviewItem(
            stationId: station.id,
            stationName: station.name,
            ridesCount: stationRides.length,
            lastComment: lastComment,
          );
        })
        .toList(growable: false);

    return StationOverviewState(items);
  }

  Future<void> refresh() async {
    ref.invalidate(allStationsProvider);
    await ref.read(ridesControllerProvider.notifier).refresh();
    ref.invalidateSelf();
    await future;
  }
}
