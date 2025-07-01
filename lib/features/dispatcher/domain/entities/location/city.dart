import 'package:driver_app/features/dispatcher/domain/entities/location/location_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'neighborhood.dart';

part 'city.freezed.dart';
part 'city.g.dart'; 

@freezed
class City  extends LocationAbstract with _$City {
  const factory City({
    required String name,
    required double frequency, 
    required List<Neighborhood> neighborhoods,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
