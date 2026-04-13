import 'dart:async';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:driver_app/core/logger/firebase_logger.dart';
import 'package:path_provider/path_provider.dart';

import 'hive_registry.dart';

class HiveBootstrapService {
  Future<void>? _ready;

  Future<void> ensureReady() {
    FirebaseLogger.i(
      'Hive ensureReady called',
      extra: {'alreadyInitialized': _ready != null},
    );
    return _ready ??= _initAndOpenAll();
  }

  void resetForTesting() {
    FirebaseLogger.w('Hive resetForTesting called');
    _ready = null;
  }

  Future<void> _initAndOpenAll() async {
    try {
      FirebaseLogger.i('Hive INIT START');

      await Hive.initFlutter();
      FirebaseLogger.i('Hive.initFlutter DONE');

      _registerAdapters();
      await _openBoxesSafely();

      FirebaseLogger.i('Hive INIT COMPLETE');
    } catch (e, st) {
      FirebaseLogger.e('Hive INIT FAILED', error: e, stack: st);
      rethrow;
    }
  }

  void _registerAdapters() {
    FirebaseLogger.i(
      'Registering Hive adapters',
      extra: {'count': HiveRegistry.registerAll.length},
    );

    for (final fn in HiveRegistry.registerAll) {
      try {
        fn();
        FirebaseLogger.i('Hive adapter registered');
      } catch (e, st) {
        if (e.toString().contains('already registered')) {
          FirebaseLogger.w(
            'Hive adapter already registered – skipping',
            extra: {'error': e.toString()},
          );
        } else {
          FirebaseLogger.e(
            'Hive adapter registration FAILED',
            error: e,
            stack: st,
          );
          rethrow;
        }
      }
    }

    FirebaseLogger.i('All Hive adapters registered');
  }

  Future<void> _openBoxesSafely() async {
    FirebaseLogger.i(
      'Opening Hive boxes (safe)',
      extra: {'boxes': HiveRegistry.boxes},
    );

    for (final boxName in HiveRegistry.boxes) {
      await _openBoxWithRecovery(boxName);
    }

    FirebaseLogger.i('All Hive boxes opened (safe)');
  }

  Future<void> _openBoxWithRecovery(String boxName) async {
    try {
      if (Hive.isBoxOpen(boxName)) {
        FirebaseLogger.w('Hive box already open', extra: {'box': boxName});
        return;
      }

      FirebaseLogger.i('Opening Hive box', extra: {'box': boxName});
      final box = await Hive.openBox(boxName);

      FirebaseLogger.i(
        'Hive box opened',
        extra: {'box': boxName, 'path': box.path, 'length': box.length},
      );
    } catch (e, st) {
      FirebaseLogger.e(
        'Hive openBox FAILED - will try recovery (delete & reopen)',
        error: e,
        stack: st,
        extra: {'box': boxName},
      );

      // ניסיון התאוששות: סגור אם נפתח חלקית + מחק קבצים + פתח מחדש
      await _closeIfOpen(boxName);
      await _deleteBoxFiles(boxName);

      try {
        FirebaseLogger.w(
          'Re-opening Hive box after recovery',
          extra: {'box': boxName},
        );

        final box = await Hive.openBox(boxName);

        FirebaseLogger.i(
          'Hive recovery succeeded - box opened fresh',
          extra: {'box': boxName, 'path': box.path, 'length': box.length},
        );
      } catch (e2, st2) {
        FirebaseLogger.e(
          'Hive recovery FAILED - cannot open box even after delete',
          error: e2,
          stack: st2,
          extra: {'box': boxName},
        );
        rethrow;
      }
    }
  }

  Future<void> _closeIfOpen(String boxName) async {
    try {
      if (!Hive.isBoxOpen(boxName)) return;
      FirebaseLogger.w('Closing Hive box before recovery', extra: {'box': boxName});
      await Hive.box(boxName).close();
    } catch (e, st) {
      FirebaseLogger.e(
        'Failed to close box during recovery (continuing anyway)',
        error: e,
        stack: st,
        extra: {'box': boxName},
      );
    }
  }

  Future<void> _deleteBoxFiles(String boxName) async {
    final dir = await getApplicationDocumentsDirectory();

    // Hive (non-lazy) בד"כ יוצר קבצים בשם:
    // <boxName>.hive + <boxName>.lock
    final hiveFile = File('${dir.path}/$boxName.hive');
    final lockFile = File('${dir.path}/$boxName.lock');

    // לפעמים יש גם "hive" בתיקייה פנימית (תלוי initFlutter),
    // אז ננסה גם שם:
    final hiveSubDir = Directory('${dir.path}/hive');
    final hiveFile2 = File('${hiveSubDir.path}/$boxName.hive');
    final lockFile2 = File('${hiveSubDir.path}/$boxName.lock');

    Future<void> tryDelete(File f) async {
      try {
        if (await f.exists()) {
          FirebaseLogger.w('Deleting Hive file', extra: {'path': f.path, 'box': boxName});
          await f.delete();
        } else {
          FirebaseLogger.i('Hive file not found (skip)', extra: {'path': f.path, 'box': boxName});
        }
      } catch (e, st) {
        FirebaseLogger.e(
          'Failed deleting Hive file',
          error: e,
          stack: st,
          extra: {'path': f.path, 'box': boxName},
        );
      }
    }

    await tryDelete(hiveFile);
    await tryDelete(lockFile);
    await tryDelete(hiveFile2);
    await tryDelete(lockFile2);
  }
}

final hiveBootstrapServiceProvider = Provider((ref) {
  return HiveBootstrapService();
});