import 'package:driver_app/features/driver_map/domain/entities/driver_map_item_type.dart';
import 'package:driver_app/features/driver_map/presentation/camera/driver_map_camera_follower.dart';
import 'package:driver_app/features/driver_map/presentation/map_layers/driver_map_marker_layer.dart';
import 'package:driver_app/features/driver_map/presentation/providers/driver_map_controller_provider.dart';
import 'package:driver_app/features/driver_rides/domain/entities/map_bounds.dart';
import 'package:driver_app/features/driver_rides/presentation/providers/driver_rides_providers.dart';
import 'package:driver_app/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maplibre_gl/maplibre_gl.dart';

class DriverMapView extends HookConsumerWidget {
  final String styleUrl;

  const DriverMapView({super.key, required this.styleUrl});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapControllerRef = useRef<MapLibreMapController?>(null);
    final markerLayerRef = useRef(DriverMapMarkerLayer());
    final cameraFollowerRef = useRef(DriverMapCameraFollower());
    final mapHeightRef = useRef(0.0);
    final mapState = ref.watch(driverMapControllerProvider);
    final selfDriver =
        mapState.items
            .where((item) => item.type == DriverMapItemType.selfDriver)
            .firstOrNull;

    Future<void> followDriverCamera({bool force = false}) async {
      final controller = mapControllerRef.value;
      if (controller == null) return;

      final latestState = ref.read(driverMapControllerProvider);
      if (!force && !latestState.isFollowingDriver) return;
      if (!latestState.isStyleLoaded) return;

      final self =
          latestState.items
              .where((item) => item.type == DriverMapItemType.selfDriver)
              .firstOrNull;
      if (self == null) return;

      final cameraFollower = cameraFollowerRef.value;
      if (!force && cameraFollower.isAnimationInFlight) return;
      if (force) {
        cameraFollower.reset();
      }

      final mapNotifier = ref.read(driverMapControllerProvider.notifier);
      mapNotifier.beginProgrammaticCameraMove();

      final cameraMove = await cameraFollower.followDriver(
        controller: controller,
        mapState: latestState,
        driver: self,
        viewportHeight: mapHeightRef.value,
        force: force,
      );

      if (cameraMove == null) {
        if (!cameraFollower.isAnimationInFlight) {
          mapNotifier.endProgrammaticCameraMove();
        }
        return;
      }

      mapNotifier.recordFollowCameraPosition(
        latitude: cameraMove.driverLatitude,
        longitude: cameraMove.driverLongitude,
        bearing: cameraMove.bearing,
      );

      Future<void>.delayed(
        DriverMapCameraFollower.cameraAnimationDuration +
            const Duration(milliseconds: 150),
        () {
          ref
              .read(driverMapControllerProvider.notifier)
              .endProgrammaticCameraMove();
        },
      );
    }

    Future<void> loadVisibleRidePreviews({bool force = false}) async {
      final controller = mapControllerRef.value;
      if (controller == null) return;

      final visibleRegion = await controller.getVisibleRegion();
      final bounds = MapBounds(
        north: visibleRegion.northeast.latitude,
        south: visibleRegion.southwest.latitude,
        east: visibleRegion.northeast.longitude,
        west: visibleRegion.southwest.longitude,
      );

      await ref
          .read(driverMapRidesControllerProvider.notifier)
          .loadForBounds(bounds, force: force);
    }

    ref.listen(driverMapControllerProvider, (previous, next) {
      if (!next.isStyleLoaded) return;

      markerLayerRef.value.syncItems(next.items);

      final itemsChanged = previous?.items != next.items;
      final styleJustLoaded = previous?.isStyleLoaded != true;
      final followRequested =
          previous?.followCameraRequestId != next.followCameraRequestId;

      if (!next.isFollowingDriver) return;
      if (!itemsChanged && !styleJustLoaded && !followRequested) return;

      followDriverCamera(force: followRequested);
    });

    return LayoutBuilder(
      builder: (context, constraints) {
        mapHeightRef.value = constraints.maxHeight;

        return Stack(
          children: [
            MapLibreMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  selfDriver?.latitude ?? 31.7683,
                  selfDriver?.longitude ?? 35.2137,
                ),
                bearing: selfDriver?.heading ?? 0,
                zoom:
                    selfDriver == null
                        ? 13
                        : DriverMapCameraFollower.navigationZoom,
              ),
              styleString: styleUrl,
              onMapCreated: (controller) {
                mapControllerRef.value = controller;
              },
              onCameraIdle: () async {
                ref
                    .read(driverMapControllerProvider.notifier)
                    .markUserInteractionEnded();

                await loadVisibleRidePreviews();
              },
              trackCameraPosition: true,
              onCameraMove: (_) {
                final currentMapState = ref.read(driverMapControllerProvider);
                if (!currentMapState.isStyleLoaded) return;
                if (currentMapState.isProgrammaticCameraMove) return;

                ref
                    .read(driverMapControllerProvider.notifier)
                    .disableDriverFollowForUserInteraction();
              },
              onStyleLoadedCallback: () async {
                final controller = mapControllerRef.value;
                if (controller == null) return;

                await markerLayerRef.value.attach(controller);

                final latestState = ref.read(driverMapControllerProvider);
                await markerLayerRef.value.syncItems(latestState.items);

                ref
                    .read(driverMapControllerProvider.notifier)
                    .markStyleLoaded();

                await loadVisibleRidePreviews(force: true);
              },
            ),

            if (!mapState.isFollowingDriver)
              Positioned(
                right: AppSpacing.m,
                bottom: AppSpacing.lg,
                child: FloatingActionButton.small(
                  tooltip: 'Recenter',
                  onPressed: () {
                    ref
                        .read(driverMapControllerProvider.notifier)
                        .requestDriverFollow();
                  },
                  child: const Icon(Icons.my_location),
                ),
              ),
          ],
        );
      },
    );
  }
}
