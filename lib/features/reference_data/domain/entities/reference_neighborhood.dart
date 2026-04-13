import 'package:driver_app/features/reference_data/domain/entities/reference_location.dart';
import 'package:driver_app/features/reference_data/domain/entities/reference_street.dart';

class ReferenceNeighborhood implements ReferenceLocation {
  const ReferenceNeighborhood({
    required this.name,
    required this.frequency,
    required this.streets,
  });

  @override
  final String name;

  @override
  final double frequency;

  final List<ReferenceStreet> streets;
}
