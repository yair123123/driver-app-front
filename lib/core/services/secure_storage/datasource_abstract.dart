abstract class LocalDatasource {
  Future<void> saveLocalByKey(String key,String value);
  Future<String?> getLocalByKey(String key);
  Future<void> clearLocalByKey(String key);
}
