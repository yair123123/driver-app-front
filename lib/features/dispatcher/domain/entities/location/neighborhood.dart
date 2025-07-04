import 'package:driver_app/features/dispatcher/domain/entities/location/location_abstract.dart';
import 'package:driver_app/features/dispatcher/domain/entities/location/street.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'neighborhood.freezed.dart';
part 'neighborhood.g.dart'; 

@freezed
class Neighborhood  extends LocationAbstract with _$Neighborhood {
  const factory Neighborhood({
    required String name,
    required double frequency,
    required List<Street> streets,
  }) = _Neighborhood;

  factory Neighborhood.fromJson(Map<String, dynamic> json) => _$NeighborhoodFromJson(json);
}
