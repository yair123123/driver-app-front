import 'package:hive/hive.dart';
import 'hive_bootstrap_service.dart';

class HiveDatasource<T> {
  final HiveBootstrapService hive;
  final String boxName;
  final String key;

  Box<dynamic>? _box;

  HiveDatasource({
    required this.hive,
    required this.boxName,
    required this.key,
  });

  String _scopedKey([String? scope]) {
    if (scope == null || scope.isEmpty) return key;
    return '${key}_$scope';
  }

  Future<Box<dynamic>> _boxAsync() async {
    await hive.ensureReady();

    // If box wasn't in registry, Hive.box() would throw.
    // We intentionally fail fast here because registry should be the source of truth.
    _box ??= Hive.box(boxName);
    return _box!;
  }

  // ---------- List ----------

  Future<void> saveList(List<T> items) async {
    final box = await _boxAsync();
    await box.put(_scopedKey(), items);
  }

  Future<List<T>> getList() async {
    final box = await _boxAsync();
    final raw = box.get(_scopedKey());
    if (raw is List) return raw.whereType<T>().toList();
    return const [];
  }

  Future<void> saveListForScope(String scope, List<T> items) async {
    final box = await _boxAsync();
    await box.put(_scopedKey(scope), items);
  }

  Future<List<T>> getListForScope(String scope) async {
    final box = await _boxAsync();
    final raw = box.get(_scopedKey(scope));
    if (raw is List) return raw.whereType<T>().toList();
    return const [];
  }

  // ---------- Value ----------

  Future<void> saveValue(T value) async {
    final box = await _boxAsync();
    await box.put(_scopedKey(), value);
  }

  Future<T?> getValue() async {
    final box = await _boxAsync();
    final raw = box.get(_scopedKey());
    return raw is T ? raw : null;
  }

  Future<void> saveValueForScope(String scope, T value) async {
    final box = await _boxAsync();
    await box.put(_scopedKey(scope), value);
  }

  Future<T?> getValueForScope(String scope) async {
    final box = await _boxAsync();
    final raw = box.get(_scopedKey(scope));
    return raw is T ? raw : null;
  }

  // ---------- Clear ----------

  Future<void> clear() async {
    final box = await _boxAsync();
    await box.delete(_scopedKey());
  }

  Future<void> clearForScope(String scope) async {
    final box = await _boxAsync();
    await box.delete(_scopedKey(scope));
  }
}