class RideMapItem {
  const RideMapItem({
    required this.id,
    required this.status,
    required this.createdAt,
    required this.originLat,
    required this.originLon,
    this.stationId,
    this.stationName,
    this.driverId,
    this.priceAmount,
    this.originTitle,
    this.destinationLat,
    this.destinationLon,
    this.destinationTitle,
    this.originCity,
    this.originStreet,
    this.originHouseNumber,
    this.destinationCity,
    this.destinationStreet,
    this.destinationHouseNumber,
  });

  final int id;
  final RideStatus status;
  final DateTime createdAt;

  final int? stationId;
  final String? stationName;
  final int? driverId;

  final num? priceAmount;

  final double originLat;
  final double originLon;
  final String? originTitle;

  final double? destinationLat;
  final double? destinationLon;
  final String? destinationTitle;

  final String? originCity;
  final String? originStreet;
  final String? originHouseNumber;

  final String? destinationCity;
  final String? destinationStreet;
  final String? destinationHouseNumber;

  bool get hasDestination => destinationLat != null && destinationLon != null;

  String get displayOriginTitle =>
      _firstNonEmpty(
        originTitle,
        _formatAddress(originStreet, originHouseNumber, originCity),
      ) ??
      '';

  String get displayDestinationTitle =>
      _firstNonEmpty(
        destinationTitle,
        _formatAddress(
          destinationStreet,
          destinationHouseNumber,
          destinationCity,
        ),
      ) ??
      '';

  String get displayStationName => stationName ?? '';

  String? get displayPrice {
    final price = priceAmount;
    if (price == null) return null;

    final hasFraction = price % 1 != 0;
    final value =
        hasFraction ? price.toStringAsFixed(2) : price.toStringAsFixed(0);
    return '$value NIS';
  }

  RideMapItem copyWith({
    int? id,
    RideStatus? status,
    DateTime? createdAt,
    Object? stationId = _unset,
    Object? stationName = _unset,
    Object? driverId = _unset,
    Object? priceAmount = _unset,
    double? originLat,
    double? originLon,
    Object? originTitle = _unset,
    Object? destinationLat = _unset,
    Object? destinationLon = _unset,
    Object? destinationTitle = _unset,
    Object? originCity = _unset,
    Object? originStreet = _unset,
    Object? originHouseNumber = _unset,
    Object? destinationCity = _unset,
    Object? destinationStreet = _unset,
    Object? destinationHouseNumber = _unset,
  }) {
    return RideMapItem(
      id: id ?? this.id,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      stationId: stationId == _unset ? this.stationId : stationId as int?,
      stationName:
          stationName == _unset ? this.stationName : stationName as String?,
      driverId: driverId == _unset ? this.driverId : driverId as int?,
      priceAmount:
          priceAmount == _unset ? this.priceAmount : priceAmount as num?,
      originLat: originLat ?? this.originLat,
      originLon: originLon ?? this.originLon,
      originTitle:
          originTitle == _unset ? this.originTitle : originTitle as String?,
      destinationLat:
          destinationLat == _unset
              ? this.destinationLat
              : destinationLat as double?,
      destinationLon:
          destinationLon == _unset
              ? this.destinationLon
              : destinationLon as double?,
      destinationTitle:
          destinationTitle == _unset
              ? this.destinationTitle
              : destinationTitle as String?,
      originCity:
          originCity == _unset ? this.originCity : originCity as String?,
      originStreet:
          originStreet == _unset ? this.originStreet : originStreet as String?,
      originHouseNumber:
          originHouseNumber == _unset
              ? this.originHouseNumber
              : originHouseNumber as String?,
      destinationCity:
          destinationCity == _unset
              ? this.destinationCity
              : destinationCity as String?,
      destinationStreet:
          destinationStreet == _unset
              ? this.destinationStreet
              : destinationStreet as String?,
      destinationHouseNumber:
          destinationHouseNumber == _unset
              ? this.destinationHouseNumber
              : destinationHouseNumber as String?,
    );
  }

  static String? _formatAddress(
    String? street,
    String? houseNumber,
    String? city,
  ) {
    final streetLine = [
      street,
      houseNumber,
    ].where((part) => part != null && part.trim().isNotEmpty).join(' ');
    final parts = [streetLine, city]
        .where((part) => part != null && part.trim().isNotEmpty)
        .cast<String>()
        .toList(growable: false);

    if (parts.isEmpty) return null;
    return parts.join(', ');
  }

  static String? _firstNonEmpty(String? first, String? second) {
    if (first != null && first.trim().isNotEmpty) return first;
    if (second != null && second.trim().isNotEmpty) return second;
    return null;
  }
}

enum RideStatus {
  open('OPEN'),
  dispatching('DISPATCHING'),
  assigned('ASSIGNED'),
  enRoute('EN_ROUTE'),
  arrived('ARRIVED'),
  inProgress('IN_PROGRESS'),
  completed('COMPLETED'),
  canceled('CANCELED'),
  unknown('UNKNOWN');

  const RideStatus(this.apiValue);

  final String apiValue;

  static RideStatus fromApi(Object? value) {
    return switch (value?.toString().toUpperCase()) {
      'OPEN' || 'SEARCHING_DRIVER' => RideStatus.open,
      'DISPATCHING' => RideStatus.dispatching,
      'ASSIGNED' => RideStatus.assigned,
      'EN_ROUTE' => RideStatus.enRoute,
      'ARRIVED' => RideStatus.arrived,
      'IN_PROGRESS' => RideStatus.inProgress,
      'COMPLETED' => RideStatus.completed,
      'CANCELED' || 'CANCELLED' => RideStatus.canceled,
      _ => RideStatus.unknown,
    };
  }
}

const Object _unset = Object();
