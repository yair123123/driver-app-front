import 'package:driver_app/core/env/config_service.dart';
import 'package:driver_app/features/driver_map/presentation/widgets/driver_map_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DriverHubScreen extends HookConsumerWidget {
  const DriverHubScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final styleUrl = ref.read(appConfigProvider).map.styleUrl;
    return Scaffold(body: DriverMapView(styleUrl: styleUrl));
  }
}
