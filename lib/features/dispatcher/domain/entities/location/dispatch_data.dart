import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:driver_app/features/dispatcher/domain/entities/location/city.dart';

part 'dispatch_data.freezed.dart';
part 'dispatch_data.g.dart';

@freezed
class DispatchData with _$DispatchData {
  const factory DispatchData({
    required List<String> comments,
    required Map<String, List<int>> prices,
    required List<City> cities,
  }) = _DispatchData;

  factory DispatchData.fromJson(Map<String, dynamic> json) =>
      _$DispatchDataFromJson(json);
}
