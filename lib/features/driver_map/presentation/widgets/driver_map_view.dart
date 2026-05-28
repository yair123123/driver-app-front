import 'package:driver_app/features/driver_map/presentation/map_layers/driver_map_marker_layer.dart';
import 'package:driver_app/features/driver_map/presentation/providers/driver_map_camera_controller_provider.dart';
import 'package:driver_app/features/driver_map/presentation/providers/driver_map_controller_provider.dart';
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
    final markerLayerRef = useRef(DriverMapMarkerLayer());
    final cameraController = ref.read(driverMapCameraControllerProvider);
    final mapState = ref.watch(driverMapControllerProvider);

    useEffect(() {
      return cameraController.detachMapController;
    }, [cameraController]);
    ref.listen(driverMapControllerProvider, (previous, next) {
      if (!next.isStyleLoaded) return;

      markerLayerRef.value.syncItems(next.items);

      final itemsChanged = previous?.items != next.items;
      final styleJustLoaded = previous?.isStyleLoaded != true;
      final followRequested =
          previous?.followCameraRequestId != next.followCameraRequestId;

      if (!next.isFollowingDriver) return;
      if (!itemsChanged && !styleJustLoaded && !followRequested) return;

      cameraController.followDriver(force: followRequested);
    });

    return LayoutBuilder(
      builder: (context, constraints) {
        cameraController.updateViewportHeight(constraints.maxHeight);

        return Stack(
          children: [
            MapLibreMap(
              initialCameraPosition: cameraController.initialCameraPosition(
                mapState,
              ),
              styleString: styleUrl,
              onMapCreated: cameraController.attachMapController,
              onCameraIdle: cameraController.handleCameraIdle,
              trackCameraPosition: true,
              onCameraMove: (_) => cameraController.handleCameraMove(),
              onStyleLoadedCallback: () async {
                final markerLayerAttached = await cameraController
                    .withMapController((controller) async {
                      await markerLayerRef.value.attach(controller);
                      return true;
                    });

                if (markerLayerAttached != true) return;

                final latestState = ref.read(driverMapControllerProvider);
                await markerLayerRef.value.syncItems(latestState.items);

                ref
                    .read(driverMapControllerProvider.notifier)
                    .markStyleLoaded();

                await cameraController.loadVisibleRidePreviews(force: true);
              },
            ),

            if (!mapState.isFollowingDriver)
              Positioned(
                right: AppSpacing.m,
                bottom: AppSpacing.lg,
                child: FloatingActionButton.small(
                  tooltip: 'Recenter',
                  onPressed: cameraController.requestDriverFollow,
                  child: const Icon(Icons.my_location),
                ),
              ),
          ],
        );
      },
    );
  }
}
