import 'package:driver_app/features/bootstrap/data/datasources/auth_class_datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDatasourceWeb implements AuthLocalDatasource{
  @override
  Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("jwt", token);
  }

  @override
  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("jwt");
  }

  @override
  Future<void> clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove("jwt");
  }
}
