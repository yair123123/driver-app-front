import 'package:freezed_annotation/freezed_annotation.dart';

part 'station.freezed.dart';

@freezed
class Station with _$Station {
  const factory Station({
    required int id,
    required String name,
    required bool isActive,
  }) = _Station;
}
