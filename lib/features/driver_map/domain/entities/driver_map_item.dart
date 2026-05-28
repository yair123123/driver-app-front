import 'package:driver_app/features/driver_map/domain/entities/driver_map_item_type.dart';

class DriverMapItem {
  final String id;
  final double latitude;
  final double longitude;
  final DriverMapItemType type;
  final double? heading;
  final String? title;
  final Map<String, Object?> metadata;

  const DriverMapItem({
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.type,
    this.heading,
    this.title,
    this.metadata = const {},
  });
}
