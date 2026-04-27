import 'package:driver_app/features/driver_map/domain/entities/driver_map_item.dart';
import 'package:driver_app/features/driver_map/domain/entities/driver_map_route.dart';

class DriverMapState {
  final List<DriverMapItem> items;
  final List<DriverMapRoute> routes;
  final bool isFollowingDriver;
  final bool isStyleLoaded;

  const DriverMapState({
    this.items = const [],
    this.routes = const [],
    this.isFollowingDriver = true,
    this.isStyleLoaded = false,
  });

  DriverMapState copyWith({
    List<DriverMapItem>? items,
    List<DriverMapRoute>? routes,
    bool? isFollowingDriver,
    bool? isStyleLoaded,
  }) {
    return DriverMapState(
      items: items ?? this.items,
      routes: routes ?? this.routes,
      isFollowingDriver: isFollowingDriver ?? this.isFollowingDriver,
      isStyleLoaded: isStyleLoaded ?? this.isStyleLoaded,
    );
  }
}
