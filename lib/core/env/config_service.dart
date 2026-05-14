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

class ApiConfig {
  final String baseUrl;

  const ApiConfig({required this.baseUrl});
}

class MapConfig {
  final String apiKey;

  const MapConfig({required this.apiKey});

  String get styleUrl =>
      'https://api.maptiler.com/maps/dataviz-v4-dark/style.json?key=$apiKey';
}

class ShareConfig {
  final String androidUrl;
  final String iosUrl;
  final String privacyPolicyPath;

  const ShareConfig({
    required this.androidUrl,
    required this.iosUrl,
    required this.privacyPolicyPath,
  });
}

class SupportConfig {
  final String email;

  const SupportConfig({required this.email});
}

class AppConfig {
  final ApiConfig api;
  final MapConfig map;
  final ShareConfig share;
  final SupportConfig support;

  const AppConfig({
    required this.api,
    required this.map,
    required this.share,
    required this.support,
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

  AppConfig current() {
    final apiUrl = _rc.getString(RCKeys.apiUrl).trim();
    final privacy = _rc.getString(RCKeys.privacyPolicyPath).trim();
    final mapKey = _rc.getString(RCKeys.mapTilerApiKey).trim();

    return AppConfig(
      api: ApiConfig(baseUrl: apiUrl),
      map: MapConfig(apiKey: mapKey),
      share: ShareConfig(
        androidUrl: _rc.getString(RCKeys.androidUrl).trim(),
        iosUrl: _rc.getString(RCKeys.iosUrl).trim(),
        privacyPolicyPath: privacy,
      ),
      support: SupportConfig(email: _rc.getString(RCKeys.supportEmail).trim()),
    );
  }

  void _validateOrThrow() {
    final apiUrl = _rc.getString(RCKeys.apiUrl).trim();
    final privacy = _rc.getString(RCKeys.privacyPolicyPath).trim();
    final mapKey = _rc.getString(RCKeys.mapTilerApiKey).trim();

    if (apiUrl.isEmpty) {
      throw StateError('Missing "${RCKeys.apiUrl}"');
    }

    if (privacy.isEmpty) {
      throw StateError('Missing "${RCKeys.privacyPolicyPath}"');
    }

    if (mapKey.isEmpty) {
      throw StateError('Missing "${RCKeys.mapTilerApiKey}"');
    }
  }
}

final configServiceProvider = Provider<ConfigService>(
  (ref) => ConfigService(FirebaseRemoteConfig.instance),
);

final appConfigProvider = Provider<AppConfig>((ref) {
  return ref.read(configServiceProvider).current();
});

const remoteConfigDefaults = <String, Object>{
  RCKeys.apiUrl: 'localhost:8001',
  RCKeys.privacyPolicyPath: 'blabla',
  RCKeys.mapTilerApiKey: '',
  RCKeys.supportEmail: '',
  RCKeys.androidUrl: '',
  RCKeys.iosUrl: '',
};
