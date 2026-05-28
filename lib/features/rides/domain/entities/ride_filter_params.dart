import 'package:driver_app/features/rides/domain/entities/ride/ride_map_item.dart';

enum RidesViewMode { list, map }

class RideMapBounds {
  const RideMapBounds({
    required this.north,
    required this.south,
    required this.east,
    required this.west,
  });

  final double north;
  final double south;
  final double east;
  final double west;

  Map<String, String> toQueryParameters() {
    return {
      RideQueryKeys.north: north.toString(),
      RideQueryKeys.south: south.toString(),
      RideQueryKeys.east: east.toString(),
      RideQueryKeys.west: west.toString(),
    };
  }

  bool contains({required double latitude, required double longitude}) {
    final minLat = south < north ? south : north;
    final maxLat = south < north ? north : south;
    final minLon = west < east ? west : east;
    final maxLon = west < east ? east : west;

    return latitude >= minLat &&
        latitude <= maxLat &&
        longitude >= minLon &&
        longitude <= maxLon;
  }

  @override
  bool operator ==(Object other) {
    return other is RideMapBounds &&
        other.north == north &&
        other.south == south &&
        other.east == east &&
        other.west == west;
  }

  @override
  int get hashCode => Object.hash(north, south, east, west);
}

class RideFilterParams {
  const RideFilterParams({
    this.mapBounds,
    this.status,
    this.stationId,
    this.driverId,
    this.minPrice,
    this.maxPrice,
    this.searchText,
    this.page = 1,
    this.pageSize = RidePagingDefaults.listPageSize,
    this.viewMode = RidesViewMode.list,
  });

  const RideFilterParams.map({
    this.mapBounds,
    this.status = RideStatus.open,
    this.stationId,
    this.driverId,
    this.minPrice,
    this.maxPrice,
    this.searchText,
    this.page = 1,
    this.pageSize = RidePagingDefaults.mapPageSize,
    this.viewMode = RidesViewMode.map,
  });

  final RideMapBounds? mapBounds;
  final RideStatus? status;
  final int? stationId;
  final int? driverId;
  final num? minPrice;
  final num? maxPrice;
  final String? searchText;
  final int page;
  final int pageSize;
  final RidesViewMode viewMode;

  RideFilterParams get withoutMapBounds => copyWith(mapBounds: null);

  RideFilterParams copyWith({
    Object? mapBounds = _unset,
    Object? status = _unset,
    Object? stationId = _unset,
    Object? driverId = _unset,
    Object? minPrice = _unset,
    Object? maxPrice = _unset,
    Object? searchText = _unset,
    int? page,
    int? pageSize,
    RidesViewMode? viewMode,
  }) {
    return RideFilterParams(
      mapBounds:
          mapBounds == _unset ? this.mapBounds : mapBounds as RideMapBounds?,
      status: status == _unset ? this.status : status as RideStatus?,
      stationId: stationId == _unset ? this.stationId : stationId as int?,
      driverId: driverId == _unset ? this.driverId : driverId as int?,
      minPrice: minPrice == _unset ? this.minPrice : minPrice as num?,
      maxPrice: maxPrice == _unset ? this.maxPrice : maxPrice as num?,
      searchText:
          searchText == _unset ? this.searchText : searchText as String?,
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
      viewMode: viewMode ?? this.viewMode,
    );
  }

  Map<String, dynamic> toQueryParameters() {
    final normalizedSearch = searchText?.trim();

    return {
      RideQueryKeys.page: page,
      RideQueryKeys.pageSize: pageSize,
      if (stationId != null) RideQueryKeys.stationId: stationId,
      if (driverId != null) RideQueryKeys.driverId: driverId,
      if (status != null) RideQueryKeys.status: status!.apiValue,
      if (minPrice != null) RideQueryKeys.minPrice: minPrice,
      if (maxPrice != null) RideQueryKeys.maxPrice: maxPrice,
      if (normalizedSearch != null && normalizedSearch.isNotEmpty)
        RideQueryKeys.search: normalizedSearch,
      if (mapBounds != null) ...mapBounds!.toQueryParameters(),
    };
  }

  bool matches(RideMapItem ride) {
    final bounds = mapBounds;
    if (bounds != null &&
        !bounds.contains(latitude: ride.originLat, longitude: ride.originLon)) {
      return false;
    }

    final statusFilter = status;
    if (statusFilter != null && ride.status != statusFilter) {
      return false;
    }

    final stationFilter = stationId;
    if (stationFilter != null && ride.stationId != stationFilter) {
      return false;
    }

    final driverFilter = driverId;
    if (driverFilter != null && ride.driverId != driverFilter) {
      return false;
    }

    final price = ride.priceAmount;
    if (minPrice != null && (price == null || price < minPrice!)) {
      return false;
    }
    if (maxPrice != null && (price == null || price > maxPrice!)) {
      return false;
    }

    final normalizedSearch = searchText?.trim().toLowerCase();
    if (normalizedSearch != null && normalizedSearch.isNotEmpty) {
      final haystack = [
        ride.id.toString(),
        ride.displayOriginTitle,
        ride.displayDestinationTitle,
        ride.displayStationName,
      ].join(' ').toLowerCase();
      if (!haystack.contains(normalizedSearch)) {
        return false;
      }
    }

    return true;
  }

  @override
  bool operator ==(Object other) {
    return other is RideFilterParams &&
        other.mapBounds == mapBounds &&
        other.status == status &&
        other.stationId == stationId &&
        other.driverId == driverId &&
        other.minPrice == minPrice &&
        other.maxPrice == maxPrice &&
        other.searchText == searchText &&
        other.page == page &&
        other.pageSize == pageSize &&
        other.viewMode == viewMode;
  }

  @override
  int get hashCode => Object.hash(
    mapBounds,
    status,
    stationId,
    driverId,
    minPrice,
    maxPrice,
    searchText,
    page,
    pageSize,
    viewMode,
  );
}

abstract final class RidePagingDefaults {
  static const listPageSize = 50;
  static const mapPageSize = 200;
}

abstract final class RideQueryKeys {
  static const page = 'page';
  static const pageSize = 'pageSize';
  static const stationId = 'stationId';
  static const driverId = 'driverId';
  static const status = 'status';
  static const minPrice = 'minPrice';
  static const maxPrice = 'maxPrice';
  static const search = 'search';
  static const north = 'north';
  static const south = 'south';
  static const east = 'east';
  static const west = 'west';
}

const Object _unset = Object();
