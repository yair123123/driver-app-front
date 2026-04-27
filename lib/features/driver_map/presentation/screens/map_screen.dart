import 'package:driver_app/core/env/config_service.dart';
import 'package:driver_app/features/driver_map/presentation/widgets/driver_map_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DriverMapScreen extends ConsumerWidget {
  const DriverMapScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.watch(appConfigProvider);

    return Scaffold(
      body: DriverMapView(
        styleUrl: config.map.styleUrl,
      ),
    );
  }
}