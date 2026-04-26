import 'package:driver_app/features/driver_location/presentation/providers/driver_location_dependencies.dart';
import 'package:driver_app/features/driver_location/presentation/providers/driver_location_providers.dart';
import 'package:driver_app/features/ride_hub/presentation/widgets/self_driver_marker.dart';
import 'package:driver_app/theme/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maplibre/maplibre.dart';
class DriverMapView extends HookConsumerWidget {
  final String styleUrl;

  const DriverMapView({super.key, required this.styleUrl});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controllerRef = useRef<MapController?>(null);
    final driverLocation = ref.watch(driverLocationProvider);

    useEffect(() {
      Future.microtask(() async {
        final location =
        await ref.read(getCurrentDriverLocationUseCaseProvider)();

        if (location != null) {
          ref.read(currentDriverLocationProvider.notifier).state = location;
        }
      });

      return null;
    }, const []);

    ref.listen(driverLocationProvider, (previous, next) {
      if (next == null) return;

      controllerRef.value?.moveCamera(
        center: Geographic(lat: next.latitude, lon: next.longitude),
      );
    });

    return Stack(
      children: [
        MapLibreMap(
          options: MapOptions(
            initCenter: Geographic(
              lat: driverLocation?.latitude ?? 31.7683,
              lon: driverLocation?.longitude ?? 35.2137,
            ),
            initZoom: driverLocation == null ? 13 : 16,
            initStyle: styleUrl,
          ),
          onMapCreated: (controller) {
            controllerRef.value = controller;
          },
        ),

        Positioned(
          left: 0,
          right: 0,
          bottom: MediaQuery.of(context).size.height * 0.25,
          child: const Center(
            child: SelfDriverMarker(),
          ),
        ),
      ],
    );
  }
}