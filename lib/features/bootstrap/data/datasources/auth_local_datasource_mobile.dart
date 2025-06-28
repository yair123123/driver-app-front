import 'package:driver_app/features/bootstrap/data/datasources/auth_class_datasource.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthLocalDatasourceMobile implements AuthLocalDatasource{
  final FlutterSecureStorage storage;

  AuthLocalDatasourceMobile(this.storage);

  @override
  Future<void> saveToken(String token) async {
    await storage.write(key: "jwt", value: token);
  }

  @override
  Future<String?> getToken() async {
    return await storage.read(key: "jwt");
  }

  @override
  Future<void> clearToken() async {
    await storage.delete(key: "jwt");
  }
}
