import 'package:driver_app/features/main/domein/entities/user.dart';
import 'package:driver_app/features/main/domein/use_cases/get_user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserNotifier extends StateNotifier<User?> {
  final GetUser getUser;
  UserNotifier(this.getUser) : super(null);
  
  Future<User?> fetchUser(String token) async {

    try {
      
      final user = await getUser(token);
      state = user;
      return user;
    } catch (e) {
      state = null;
      rethrow;
    }
  }
}
