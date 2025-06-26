import 'package:freezed_annotation/freezed_annotation.dart';
import 'station.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String login_key,
    required String username,
    required String gender,
    required double rating,
    required bool payment_status,
    required bool is_dispatcher,
    required List<Station> dispatcher_stations,
    required List<Station> driver_stations,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
