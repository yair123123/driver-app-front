import 'dart:convert';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:driver_app/core/services/crash_reporting/crash_reporting_service.dart';

class FirebaseCrashReportingService extends CrashReportingService {
  factory FirebaseCrashReportingService() => _instance;

  FirebaseCrashReportingService._();

  static final FirebaseCrashReportingService _instance =
      FirebaseCrashReportingService._();

  static const int _maxStringLength = 500;

  bool _initialized = false;
  bool? _collectionEnabled;

  FirebaseCrashlytics? get _crashlytics =>
      kIsWeb ? null : FirebaseCrashlytics.instance;

  @override
  Future<void> init() async {
    if (_initialized) return;
    _initialized = true;

    if (kIsWeb) return;

    try {
      _collectionEnabled = _crashlytics!.isCrashlyticsCollectionEnabled;
      debugPrint('[CrashReporting] collection_enabled=$_collectionEnabled');
    } catch (error) {
      debugPrint('[CrashReporting] init_failed=$error');
    }
  }

  @override
  void setUserIdentifier(String id) {
    final sanitizedId = _truncate(id.trim());
    if (sanitizedId.isEmpty) return;

    if (kIsWeb) return;

    try {
      _crashlytics!.setUserIdentifier(sanitizedId);
    } catch (error) {
      debugPrint('[CrashReporting] setUserIdentifier_failed=$error');
    }
  }

  @override
  void setKeys(Map<String, Object?> keys) {
    if (keys.isEmpty) return;

    if (!kIsWeb) {
      for (final entry in keys.entries) {
        final key = entry.key.trim();
        final value = entry.value;
        if (key.isEmpty || value == null) continue;

        final sanitized = _sanitizeValue(value);
        try {
          _crashlytics!.setCustomKey(key, sanitized);
        } catch (error) {
          debugPrint(
            '[CrashReporting] setCustomKey_failed key=$key err=$error',
          );
        }
      }
    }
  }

  @override
  void log(String message, {Map<String, Object?>? extra}) {
    final normalizedMessage = _truncate(message);
    final normalizedExtra = _sanitizeMap(extra);
    final payload = normalizedExtra == null
        ? normalizedMessage
        : '$normalizedMessage | extra=${_compactString(normalizedExtra)}';

    debugPrint('[CrashReporting] $payload');

    if (kIsWeb) return;

    try {
      _crashlytics!.log(payload);
    } catch (error) {
      debugPrint('[CrashReporting] log_failed=$error');
    }
  }

  @override
  Future<void> recordNonFatal(
    Object error, {
    StackTrace? stack,
    String? reason,
    Map<String, Object?>? keys,
  }) async {
    final safeStack = stack ?? StackTrace.current;
    final safeReason = reason == null ? null : _truncate(reason);
    final safeKeys = _sanitizeMap(keys);

    if (safeKeys != null && safeKeys.isNotEmpty) {
      setKeys(safeKeys);
    }

    if (kIsWeb) {
      debugPrint(
        '[CrashReporting] non_fatal(web) reason=${safeReason ?? 'none'} error=$error',
      );
      return;
    }

    try {
      await _crashlytics!.recordError(error, safeStack, reason: safeReason);
    } catch (recordError) {
      debugPrint('[CrashReporting] recordNonFatal_failed=$recordError');
    }
  }

  Map<String, Object?>? _sanitizeMap(Map<String, Object?>? data) {
    if (data == null || data.isEmpty) return null;
    final sanitized = <String, Object?>{};

    for (final entry in data.entries) {
      final key = entry.key.trim();
      final value = entry.value;
      if (key.isEmpty || value == null) continue;
      sanitized[key] = _sanitizeValue(value);
    }

    return sanitized.isEmpty ? null : sanitized;
  }

  Object _sanitizeValue(Object value) {
    if (value is String) return _truncate(value);
    if (value is num || value is bool) return value;
    if (value is Enum) return _truncate(value.name);
    if (value is DateTime) return _truncate(value.toIso8601String());
    if (value is Map || value is Iterable) {
      return _truncate(_compactString(value));
    }
    return _truncate(value.toString());
  }

  String _compactString(Object value) {
    try {
      return jsonEncode(_jsonSafe(value));
    } catch (_) {
      return value.toString();
    }
  }

  Object? _jsonSafe(Object? value) {
    if (value == null) return null;
    if (value is String || value is num || value is bool) return value;
    if (value is Enum) return value.name;
    if (value is DateTime) return value.toIso8601String();

    if (value is Map) {
      final out = <String, Object?>{};
      for (final entry in value.entries) {
        out[entry.key.toString()] = _jsonSafe(entry.value);
      }
      return out;
    }

    if (value is Iterable) {
      return value.map(_jsonSafe).toList(growable: false);
    }

    return value.toString();
  }

  String _truncate(String value) {
    if (value.length <= _maxStringLength) return value;
    return value.substring(0, _maxStringLength);
  }
}
