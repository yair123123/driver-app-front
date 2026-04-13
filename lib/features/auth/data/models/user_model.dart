import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String username,
    required String gender,
    required double rating,
    required bool canReceiveRidesForNonPayment,
    required bool isDispatcher,
    @Default(<int>[])
    List<int> dispatcherStationsId,
    @Default(<int>[])
    List<int> driverStationsId,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}