import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:news_app/core/services/secure_storage/datasource_abstract.dart';

class LocalDatasourceMobile implements LocalDatasource {
  final FlutterSecureStorage storage;
  LocalDatasourceMobile({required this.storage});
  @override
  Future<String?> getLocalByKey(String key) async {
    return await storage.read(key: key);
  }

  @override
  Future<void> saveLocalByKey(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  @override
  Future<void> clearLocalByKey(String key) async {
    await storage.delete(key: key);
  }
}
