import 'package:driver_app/features/reference_data/domain/entities/reference_location.dart';
import 'package:driver_app/features/reference_data/domain/entities/reference_neighborhood.dart';

class ReferenceCity implements ReferenceLocation {
  const ReferenceCity({
    required this.name,
    required this.frequency,
    required this.neighborhoods,
  });

  @override
  final String name;

  @override
  final double frequency;

  final List<ReferenceNeighborhood> neighborhoods;
}
