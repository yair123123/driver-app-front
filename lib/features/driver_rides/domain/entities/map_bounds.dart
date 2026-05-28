class MapBounds {
  const MapBounds({
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
    return other is MapBounds &&
        other.north == north &&
        other.south == south &&
        other.east == east &&
        other.west == west;
  }

  @override
  int get hashCode => Object.hash(north, south, east, west);
}
