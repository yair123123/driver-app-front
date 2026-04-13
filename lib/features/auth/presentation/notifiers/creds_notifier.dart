import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:driver_app/core/error/failure.dart';
import 'package:driver_app/core/logger/firebase_logger.dart';
import 'package:driver_app/features/auth/domain/entities/auth_session.dart';
import 'package:riverpod/riverpod.dart';

class AuthSessionNotifier extends Notifier<AuthSession?> {
  static const _kAccess = 'access_token';
  static const _kRefresh = 'refresh_token';
  static const _kExpiresAt = 'expires_at';

  late final FlutterSecureStorage _storage;

  @override
  AuthSession? build() {
    _storage = const FlutterSecureStorage();
    return null;
  }

  bool _isKeystoreCorruption(Object e) {
    final s = e.toString().toLowerCase();

    return s.contains('failed to unwrap key') ||
        s.contains('invalidkeyexception') ||
        s.contains('illegalblocksizeexception') ||
        s.contains('keystoreexception') ||
        s.contains('key_not_found') ||
        s.contains('key not found') ||
        s.contains('fluttersecurestorage') ||
        s.contains('androidkeystore');
  }

  Future<T> _withSecureStorageHeal<T>(
      String operation,
      Future<T> Function() action,
      ) async {
    try {
      return await action();
    } on PlatformException catch (e, st) {
      FirebaseLogger.e(
        'SecureStorage PlatformException during $operation',
        error: e,
        stack: st,
      );
      await _safeWipeSecureStorage();
      rethrow;
    } catch (e, st) {
      if (_isKeystoreCorruption(e)) {
        FirebaseLogger.e(
          'SecureStorage Keystore corruption detected during $operation',
          error: e,
          stack: st,
        );
        await _safeWipeSecureStorage();
      } else {
        FirebaseLogger.e(
          'SecureStorage unexpected error during $operation',
          error: e,
          stack: st,
        );
      }
      rethrow;
    }
  }

  Future<Either<Failure, AuthSession?>> loadFromStorage() async {
    try {
      final access = await _withSecureStorageHeal(
        'read access_token',
            () => _storage.read(key: _kAccess),
      );
      final refresh = await _withSecureStorageHeal(
        'read refresh_token',
            () => _storage.read(key: _kRefresh),
      );
      final expStr = await _withSecureStorageHeal(
        'read expires_at',
            () => _storage.read(key: _kExpiresAt),
      );

      if (access == null && refresh == null) {
        state = null;
        return const Right(null);
      }

      final exp = expStr != null ? DateTime.tryParse(expStr) : null;

      final authSession = AuthSession(
        accessToken: access,
        refreshToken: refresh,
        expiresAt: exp,
      );

      state = authSession;
      return Right(authSession);
    } on PlatformException catch (e, st) {
      FirebaseLogger.e(
        'SecureStorageReadFailure (PlatformException)',
        error: e,
        stack: st,
      );
      state = null;
      return const Left(SecureStorageReadFailure());
    } catch (e, st) {
      FirebaseLogger.e(
        'SecureStorageReadFailure (Unknown)',
        error: e,
        stack: st,
      );
      state = null;
      return _isKeystoreCorruption(e)
          ? const Left(SecureStorageReadFailure())
          : const Left(UnknownFailure());
    }
  }

  Future<Either<Failure, Unit>> setFromLogin({
    required String accessToken,
    String? refreshToken,
    DateTime? expiresAt,
  }) async {
    state = AuthSession(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expiresAt: expiresAt,
    );

    try {
      await _withSecureStorageHeal(
        'write access_token',
            () => _storage.write(key: _kAccess, value: accessToken),
      );
      await _withSecureStorageHeal(
        'write refresh_token',
            () => _storage.write(key: _kRefresh, value: refreshToken),
      );
      await _withSecureStorageHeal(
        'write expires_at',
            () => _storage.write(
          key: _kExpiresAt,
          value: expiresAt?.toIso8601String(),
        ),
      );

      return const Right(unit);
    } on PlatformException catch (e, st) {
      FirebaseLogger.e(
        'SecureStorageWriteFailure (PlatformException)',
        error: e,
        stack: st,
      );
      await _safeWipeSecureStorage();
      state = null;
      return const Left(SecureStorageWriteFailure());
    } catch (e, st) {
      FirebaseLogger.e(
        'SecureStorageWriteFailure (Unknown)',
        error: e,
        stack: st,
      );
      await _safeWipeSecureStorage();
      state = null;
      return _isKeystoreCorruption(e)
          ? const Left(SecureStorageWriteFailure())
          : const Left(UnknownFailure());
    }
  }

  Future<Either<Failure, Unit>> clear() async {
    state = null;

    try {
      await _withSecureStorageHeal('deleteAll', () => _storage.deleteAll());
      return const Right(unit);
    } on PlatformException catch (e, st) {
      FirebaseLogger.e(
        'SecureStorageClearFailure (PlatformException)',
        error: e,
        stack: st,
      );
      return const Left(SecureStorageClearFailure());
    } catch (e, st) {
      FirebaseLogger.e(
        'SecureStorageClearFailure (Unknown)',
        error: e,
        stack: st,
      );
      return _isKeystoreCorruption(e)
          ? const Left(SecureStorageClearFailure())
          : const Left(UnknownFailure());
    }
  }

  Future<void> _safeWipeSecureStorage() async {
    FirebaseLogger.e('SecureStorage self-heal wipe triggered');

    try {
      await _storage.deleteAll();
      return;
    } catch (e, st) {
      FirebaseLogger.e(
        'SecureStorage deleteAll failed, trying per-key delete',
        error: e,
        stack: st,
      );
      try {
        await _storage.delete(key: _kAccess);
      } catch (_) {}
      try {
        await _storage.delete(key: _kRefresh);
      } catch (_) {}
      try {
        await _storage.delete(key: _kExpiresAt);
      } catch (_) {}
    }
  }
}

final authSessionProvider = NotifierProvider<AuthSessionNotifier, AuthSession?>(
  AuthSessionNotifier.new,
);
