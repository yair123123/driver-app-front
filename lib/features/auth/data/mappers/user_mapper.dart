import '../../domain/entities/user.dart';
import '../../domain/value_boj/gender.dart';
import '../models/user_model.dart';

extension UserMapper on UserModel {
  User toEntity() {
    return User(
      id: id,
      username: username,
      gender: Gender.fromString(gender),
      rating: rating,
      canReceiveRidesForNonPayment: canReceiveRidesForNonPayment,
      isDispatcher: isDispatcher,
      dispatcherStationsId: dispatcherStationsId,
      driverStationsId: driverStationsId,
    );
  }
}

extension UserModelMapper on User {
  UserModel toModel() {
    return UserModel(
      id: id,
      username: username,
      gender: gender.toRaw(),
      rating: rating,
      canReceiveRidesForNonPayment: canReceiveRidesForNonPayment,
      isDispatcher: isDispatcher,
      dispatcherStationsId: dispatcherStationsId,
      driverStationsId: driverStationsId,
    );
  }
}