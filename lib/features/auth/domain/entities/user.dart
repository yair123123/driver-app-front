import 'package:freezed_annotation/freezed_annotation.dart';
import '../value_boj/gender.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String username,
    required Gender gender,
    required double rating,
    required bool canReceiveRidesForNonPayment,
    required bool isDispatcher,
    @Default(<int>[]) List<int> dispatcherStationsId,
    @Default(<int>[]) List<int> driverStationsId,
  }) = _User;
}