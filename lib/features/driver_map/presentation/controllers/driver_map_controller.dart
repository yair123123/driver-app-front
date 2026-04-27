import 'package:driver_app/features/driver_location/presentation/providers/driver_location_dependencies.dart';
import 'package:driver_app/features/driver_map/domain/entities/driver_map_item.dart';
import 'package:driver_app/features/driver_map/domain/entities/driver_map_item_type.dart';
import 'package:driver_app/features/driver_map/presentation/states/driver_map_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DriverMapController extends Notifier<DriverMapState> {
  @override
  DriverMapState build() {
    ref.listen(driverLocationProvider, (previous, next) {
      if (next == null) return;

      _upsertSelfDriver(
        latitude: next.latitude,
        longitude: next.longitude,
        heading: next.heading,
      );
    });

    return const DriverMapState();
  }

  void _upsertSelfDriver({
    required double latitude,
    required double longitude,
    double? heading,
  }) {
    final selfDriver = DriverMapItem(
      id: 'self_driver',
      latitude: latitude,
      longitude: longitude,
      heading: heading,
      type: DriverMapItemType.selfDriver,
    );

    final otherItems =
        state.items
            .where((item) => item.type != DriverMapItemType.selfDriver)
            .toList();

    state = state.copyWith(items: [selfDriver, ...otherItems]);
  }

  void setFollowingDriver(bool value) {
    state = state.copyWith(isFollowingDriver: value);
  }

  void markStyleLoaded() {
    state = state.copyWith(isStyleLoaded: true);
  }
}
