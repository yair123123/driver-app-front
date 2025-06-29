import 'package:driver_app/core/http/http_response_handler.dart';
import 'package:driver_app/features/bootstrap/domain/entities/credentials/auth_user.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasource {
  final String url;
  AuthRemoteDatasource(this.url);
  Future<AuthUser> login(String username, String id) async {
    final Map<String, String> queryParameters = {
      'username': username,
      'login_key': id,
    };
    try {
      final response = await http.get(
        Uri.http(url, 'api/driver/get-driver-by-credentials', queryParameters),
        headers: {'Content-Type': 'application/json'},
      );
      return responseHandler<AuthUser>(
        response,
        (json) => AuthUser.fromJson(json as Map<String, dynamic>),
      );
    } catch (e) {
      return Future.error("שגיאת תקשורת: $e");
    }
  }

  Future<bool> validateToken(String token) async {
    final response = await http.get(
      Uri.http(url, "api/jwt/verify"),
      headers: {'Content-Type': 'application/json', "auth": token},
    );
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }
}
