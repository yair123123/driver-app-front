import 'package:driver_app/features/reference_data/domain/entities/reference_location.dart';

class ReferenceStreet implements ReferenceLocation {
  const ReferenceStreet({required this.name, required this.frequency});

  @override
  final String name;

  @override
  final double frequency;
}
