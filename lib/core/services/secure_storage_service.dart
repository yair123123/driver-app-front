import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:news_app/core/services/secure_storage/datasource_abstract.dart';
import 'package:news_app/core/services/secure_storage/local_datasource_mobile.dart';
import 'package:news_app/core/services/secure_storage/local_datasource_web.dart';

class SecureStorageService {
  static FlutterSecureStorage create() {
    if (Platform.isAndroid) {
      return const FlutterSecureStorage(
        aOptions: AndroidOptions(encryptedSharedPreferences: true),
      );
    } else if (Platform.isIOS) {
      return const FlutterSecureStorage(
        iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
      );
    } else {
      return const FlutterSecureStorage();
    }
  }
}

final secureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  return SecureStorageService.create();
});
final localDatasourceProvider = Provider<LocalDatasource>(
  (ref) => kIsWeb
      ? LocalDatasourceWeb()
      : LocalDatasourceMobile(storage: (ref.watch(secureStorageProvider))),
);