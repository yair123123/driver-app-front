import 'package:driver_app/features/driver_map/domain/entities/driver_map_item_type.dart';
import 'package:driver_app/features/driver_map/presentation/map_layers/driver_map_marker_layer.dart';
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
    final controllerRef = useRef<MapLibreMapController?>(null);
    final markerLayerRef = useRef(DriverMapMarkerLayer());
    final mapState = ref.watch(driverMapControllerProvider);

    final selfDriver =
        mapState.items
            .where((item) => item.type == DriverMapItemType.selfDriver)
            .firstOrNull;

    ref.listen(driverMapControllerProvider, (previous, next) {
      if (!next.isStyleLoaded) return;

      markerLayerRef.value.syncItems(next.items);

      if (!next.isFollowingDriver) return;

      final self =
          next.items
              .where((item) => item.type == DriverMapItemType.selfDriver)
              .firstOrNull;

      if (self == null) return;

      controllerRef.value?.animateCamera(
        CameraUpdate.newLatLng(LatLng(self.latitude, self.longitude)),
      );
    });

    return Stack(
      children: [
        MapLibreMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(
              selfDriver?.latitude ?? 31.7683,
              selfDriver?.longitude ?? 35.2137,
            ),

            zoom: selfDriver == null ? 13 : 16,
          ),
          styleString: styleUrl,
          onMapCreated: (controller) {
            controllerRef.value = controller;
          },
          onCameraMove: (_) {
            ref.read(driverMapControllerProvider.notifier).setFollowingDriver(false);
          },
          onStyleLoadedCallback: () async {
            final controller = controllerRef.value;
            if (controller == null) return;

            await markerLayerRef.value.attach(controller);

            await markerLayerRef.value.syncItems(mapState.items);

            ref.read(driverMapControllerProvider.notifier).markStyleLoaded();
          },
        ),

        if (!mapState.isFollowingDriver)
          Positioned(
            right: AppSpacing.m,
            bottom: AppSpacing.lg,
            child: FloatingActionButton.small(
              onPressed: () {
                ref
                    .read(driverMapControllerProvider.notifier)
                    .setFollowingDriver(true);
              },
              child: const Icon(Icons.my_location),
            ),
          ),
      ],
    );
  }
}
