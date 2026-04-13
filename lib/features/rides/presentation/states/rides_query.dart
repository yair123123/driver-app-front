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
      'north': north.toString(),
      'south': south.toString(),
      'east': east.toString(),
      'west': west.toString(),
    };
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

class RidesQuery {
  const RidesQuery({
    this.stationId,
    this.status,
    this.mapBounds,
    this.page = 1,
    this.pageSize = 50,
    this.viewMode = RidesViewMode.list,
  });

  final int? stationId;
  final String? status;
  final RideMapBounds? mapBounds;
  final int page;
  final int pageSize;
  final RidesViewMode viewMode;

  RidesQuery copyWith({
    Object? stationId = _unset,
    Object? status = _unset,
    Object? mapBounds = _unset,
    int? page,
    int? pageSize,
    RidesViewMode? viewMode,
  }) {
    return RidesQuery(
      stationId: stationId == _unset ? this.stationId : stationId as int?,
      status: status == _unset ? this.status : status as String?,
      mapBounds:
          mapBounds == _unset ? this.mapBounds : mapBounds as RideMapBounds?,
      page: page ?? this.page,
      pageSize: pageSize ?? this.pageSize,
      viewMode: viewMode ?? this.viewMode,
    );
  }

  Map<String, dynamic> toQueryParameters() {
    return {
      'page': page,
      'pageSize': pageSize,
      if (stationId != null) 'stationId': stationId,
      if (status != null && status!.isNotEmpty) 'status': status,
      if (mapBounds != null) ...mapBounds!.toQueryParameters(),
    };
  }

  @override
  bool operator ==(Object other) {
    return other is RidesQuery &&
        other.stationId == stationId &&
        other.status == status &&
        other.mapBounds == mapBounds &&
        other.page == page &&
        other.pageSize == pageSize &&
        other.viewMode == viewMode;
  }

  @override
  int get hashCode =>
      Object.hash(stationId, status, mapBounds, page, pageSize, viewMode);
}

const Object _unset = Object();
