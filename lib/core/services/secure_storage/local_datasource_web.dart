import 'package:news_app/core/services/secure_storage/datasource_abstract.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDatasourceWeb implements LocalDatasource{
  @override
  Future<void> saveLocalByKey(String key,String value,) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  @override
  Future<String?> getLocalByKey(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  @override
  Future<void> clearLocalByKey(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }
}
