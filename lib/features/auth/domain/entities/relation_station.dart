import 'package:freezed_annotation/freezed_annotation.dart';
import 'station.dart';

part 'relation_station.freezed.dart';
part 'relation_station.g.dart';

@freezed
class RelationStation with _$RelationStation {
  const factory RelationStation({
    required Station station,
    required String relationType,
  }) = _RelationStation;

  factory RelationStation.fromJson(Map<String, dynamic> json) =>
      _$RelationStationFromJson(json);
}
