import 'package:driver_app/features/driver_map/domain/entities/driver_map_item.dart';
import 'package:driver_app/features/driver_map/domain/entities/driver_map_route.dart';

class DriverMapState {
  final List<DriverMapItem> items;
  final List<DriverMapRoute> routes;
  final bool isFollowingDriver;
  final bool isStyleLoaded;
  final bool userIsInteractingWithMap;
  final bool isProgrammaticCameraMove;
  final int followCameraRequestId;
  final double? lastCameraLatitude;
  final double? lastCameraLongitude;
  final double? lastCameraBearing;

  const DriverMapState({
    this.items = const [],
    this.routes = const [],
    this.isFollowingDriver = true,
    this.isStyleLoaded = false,
    this.userIsInteractingWithMap = false,
    this.isProgrammaticCameraMove = false,
    this.followCameraRequestId = 0,
    this.lastCameraLatitude,
    this.lastCameraLongitude,
    this.lastCameraBearing,
  });

  DriverMapState copyWith({
    List<DriverMapItem>? items,
    List<DriverMapRoute>? routes,
    bool? isFollowingDriver,
    bool? isStyleLoaded,
    bool? userIsInteractingWithMap,
    bool? isProgrammaticCameraMove,
    int? followCameraRequestId,
    double? lastCameraLatitude,
    double? lastCameraLongitude,
    double? lastCameraBearing,
  }) {
    return DriverMapState(
      items: items ?? this.items,
      routes: routes ?? this.routes,
      isFollowingDriver: isFollowingDriver ?? this.isFollowingDriver,
      isStyleLoaded: isStyleLoaded ?? this.isStyleLoaded,
      userIsInteractingWithMap:
          userIsInteractingWithMap ?? this.userIsInteractingWithMap,
      isProgrammaticCameraMove:
          isProgrammaticCameraMove ?? this.isProgrammaticCameraMove,
      followCameraRequestId:
          followCameraRequestId ?? this.followCameraRequestId,
      lastCameraLatitude: lastCameraLatitude ?? this.lastCameraLatitude,
      lastCameraLongitude: lastCameraLongitude ?? this.lastCameraLongitude,
      lastCameraBearing: lastCameraBearing ?? this.lastCameraBearing,
    );
  }
}
