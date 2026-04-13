import 'package:driver_app/features/auth/domain/entities/user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/auth_provider.dart';

class UserController extends AsyncNotifier<User?> {
  @override
  Future<User?> build() async {
    final maybeUser = await ref.read(getMeUseCaseProvider)();
    return maybeUser.match(
      (failure) => throw failure,
      (user) => user,
    );
  }

  Future<void> upsertUser(User Function(User? current) computeNext) async {
    final prevAsync = state;
    final before = prevAsync.valueOrNull;
    final after = computeNext(before);

    if (prevAsync.isLoading) {
      state = AsyncData(after);
    } else {
      state = prevAsync.whenData((_) => after);
    }
  }
}
