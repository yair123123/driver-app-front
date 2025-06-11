import 'package:driver_app/features/main/domein/entities/user.dart';
import 'package:driver_app/features/main/domein/use_cases/get_user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainNotifier extends StateNotifier<AsyncValue<User?>> {
  final GetUser getUser;
  final String? token;
  MainNotifier(this.getUser, this.token) : super(const AsyncLoading()) {
    if (token != null) {
      initMain(token!);
    } else {
      state = AsyncValue.error(
        Exception("Token is null, please login first."),
        StackTrace.current,
      );
    }
  }

  Future<void> initMain(String token) async {

    try {
      
      final user = await getUser(token);
      state = AsyncValue.data(user);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
