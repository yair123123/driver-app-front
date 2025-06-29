import 'dart:convert';
import 'package:driver_app/features/bootstrap/domain/entities/response/response_user.dart';
import 'package:driver_app/features/bootstrap/domain/entities/user/user.dart';
import 'package:http/http.dart' as http;

class UserDataSource {
  final String url;
  UserDataSource(this.url);

  Future<User> getUser(String token) async {
    try {
      final response = await http.get(
        Uri.http(url, "api/driver/get-driver-by-jwt"),
        headers: {'Content-Type': 'application/json', "auth": token},
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        ResponseUser res = ResponseUser.fromJson(data);
        if (res.success) {
          return res.content!;
        }

        return Future.error("שגיאה (${res.error})");
      } else {
        return Future.error("שגיאה כללית בשרת (${response.statusCode})");
      }
    } catch (e) {
      return Future.error("שגיאת תקשורת: $e");
    }
  }
}
