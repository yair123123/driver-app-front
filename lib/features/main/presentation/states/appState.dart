import 'package:driver_app/features/main/domein/entities/user.dart';

class AppState {
  User? user;
  bool isReady;

  AppState({required this.isReady, this.user});

  AppState CopyWith(User? user, bool? isReady) {
    return AppState(isReady: isReady ?? this.isReady, user: user ?? this.user);
  }

  static initial() => AppState(isReady: false);
}
