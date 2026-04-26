import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class RCKeys {
  static const apiUrl = 'API_URL';
  static const privacyPolicyPath = 'PRIVACY_POLICY_PATH';
  static const supportEmail = 'SUPPORT_EMAIL';
  static const androidUrl = 'ANDROID_URL';
  static const iosUrl = 'IOS_URL';
  static const mapTilerApiKey = 'MAP_TILER_API_KEY';
}

class AppConfig {
  final String androidUrl;
  final String iosUrl;
  final String mapTilerApiKey;
  final String publicApiUrl;
  final String privacyPolicyPath;
  final String supportEmail;

  const AppConfig({
    required this.mapTilerApiKey,
    required this.androidUrl,
    required this.iosUrl,
    required this.supportEmail,
    required this.publicApiUrl,
    required this.privacyPolicyPath,
  });
}

class ConfigService {
  final FirebaseRemoteConfig _rc;

  ConfigService(this._rc);

  Future<void> init({
    required Map<String, Object> defaults,
    required bool isDebug,
  }) async {
    await _rc.setDefaults(defaults);

    await _rc.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 5),
        minimumFetchInterval:
            isDebug ? Duration.zero : const Duration(hours: 4),
      ),
    );

    try {
      await _rc.fetchAndActivate();
    } on FirebaseException {}
    _validateOrThrow();
  }

  AppConfig current() => AppConfig(
    mapTilerApiKey: _rc.getString(RCKeys.mapTilerApiKey),
    iosUrl: _rc.getString(RCKeys.iosUrl),
    androidUrl: _rc.getString(RCKeys.androidUrl),
    supportEmail: _rc.getString(RCKeys.supportEmail),
    publicApiUrl: _rc.getString(RCKeys.apiUrl),
    privacyPolicyPath: _rc.getString(RCKeys.privacyPolicyPath),
  );

  void _validateOrThrow() {
    final v = _rc.getString(RCKeys.apiUrl).trim();
    final x = _rc.getString(RCKeys.privacyPolicyPath).trim();
    if (v.isEmpty) {
      throw StateError(
        'RemoteConfig key "${RCKeys.apiUrl}" is missing or empty (remote+defaults)',
      );
    }
    if (x.isEmpty) {
      throw StateError(
        'RemoteConfig key "${RCKeys.privacyPolicyPath}" is missing or empty (remote+defaults)',
      );
    }
  }
}

final configServiceProvider = Provider<ConfigService>(
  (ref) => ConfigService(FirebaseRemoteConfig.instance),
);

final appConfigProvider = Provider<AppConfig>((ref) {
  return ref.read(configServiceProvider).current();
});
