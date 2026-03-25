import 'package:driver_app/features/bootstrap/domain/entities/ride/ride.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'station.freezed.dart';
part 'station.g.dart';

@freezed
class Station with _$Station {
  const factory Station({
    required int station_id,
    required String station_name,
    @Default("") String driver_status_name,
    @Default([]) List<Ride> rides,
  }) = _Station;

  factory Station.fromJson(Map<String, dynamic> json) =>
      _$StationFromJson(json);
}