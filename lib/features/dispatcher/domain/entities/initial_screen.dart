import 'package:driver_app/features/dispatcher/domain/entities/location/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'initial_screen.freezed.dart';
part 'initial_screen.g.dart'; 

@freezed
class InitialScreen with _$InitialScreen {
  const factory InitialScreen({
    required List<City> cities,
    required Map<String, List<int>> prices,
    required List<String> comments,
  }) = _InitialScreen;

  factory InitialScreen.fromJson(Map<String, dynamic> json) => _$InitialScreenFromJson(json); // אם תרצה json
}
