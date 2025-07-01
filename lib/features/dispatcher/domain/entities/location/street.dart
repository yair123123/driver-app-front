import 'package:driver_app/features/dispatcher/domain/entities/location/location_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'street.freezed.dart';
part 'street.g.dart'; 

@freezed
class Street  extends LocationAbstract with _$Street {
  const factory Street({
    required String name,
    required double frequency,
  }) = _Street;
    factory Street.fromJson(Map<String, dynamic> json) => _$StreetFromJson(json);

}
