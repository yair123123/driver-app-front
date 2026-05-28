import 'package:driver_app/features/driver_location/presentation/providers/driver_location_dependencies.dart';
import 'package:driver_app/features/driver_map/domain/entities/driver_map_item.dart';
import 'package:driver_app/features/driver_map/domain/entities/driver_map_item_type.dart';
import 'package:driver_app/features/driver_map/presentation/states/driver_map_state.dart';
import 'package:driver_app/features/driver_rides/domain/entities/driver_ride_preview.dart';
import 'package:driver_app/features/driver_rides/presentation/mappers/driver_ride_preview_map_item_mapper.dart';
import 'package:driver_app/features/driver_rides/presentation/providers/driver_rides_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DriverMapController extends Notifier<DriverMapState> {
  @override
  DriverMapState build() {
    ref.listen(currentDriverLocationProvider, (previous, next) {
      if (next == null) return;
      _upsertSelfDriver(
        latitude: next.latitude,
        longitude: next.longitude,
        heading: next.heading,
      );
    });
    ref.listen(driverMapRidePreviewsProvider, (prev, next) {
      _setOpenRides(next);
    });
    return const DriverMapState();
  }

  void _setOpenRides(List<DriverRidePreview> rides) {
    final rideItems = rides
        .map((ride) => ride.toOpenRideMapItem())
        .toList(growable: false);

    final otherItems = state.items
        .where((item) => item.type != DriverMapItemType.openRide)
        .toList(growable: false);

    state = state.copyWith(items: [...otherItems, ...rideItems]);
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

  void requestDriverFollow() {
    state = state.copyWith(
      isFollowingDriver: true,
      userIsInteractingWithMap: false,
      followCameraRequestId: state.followCameraRequestId + 1,
    );
  }

  void disableDriverFollowForUserInteraction() {
    if (state.isProgrammaticCameraMove) return;
    if (!state.isFollowingDriver && state.userIsInteractingWithMap) return;

    state = state.copyWith(
      isFollowingDriver: false,
      userIsInteractingWithMap: true,
    );
  }

  void beginProgrammaticCameraMove() {
    if (state.isProgrammaticCameraMove && !state.userIsInteractingWithMap) {
      return;
    }

    state = state.copyWith(
      isProgrammaticCameraMove: true,
      userIsInteractingWithMap: false,
    );
  }

  void endProgrammaticCameraMove() {
    if (!state.isProgrammaticCameraMove) return;

    state = state.copyWith(isProgrammaticCameraMove: false);
  }

  void markUserInteractionEnded() {
    if (!state.userIsInteractingWithMap) return;

    state = state.copyWith(userIsInteractingWithMap: false);
  }

  void recordFollowCameraPosition({
    required double latitude,
    required double longitude,
    required double bearing,
  }) {
    state = state.copyWith(
      lastCameraLatitude: latitude,
      lastCameraLongitude: longitude,
      lastCameraBearing: bearing,
    );
  }

  void markStyleLoaded() {
    state = state.copyWith(isStyleLoaded: true);
  }
}
