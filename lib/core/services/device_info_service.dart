import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeviceInfo {
  String langCode;
  String? areaCode;

  DeviceInfo(this.areaCode, this.langCode);
}

final deviceInfoProvider = Provider<DeviceInfo>(
  (ref) => DeviceInfo(
    WidgetsBinding.instance.platformDispatcher.locale.countryCode,
    WidgetsBinding.instance.platformDispatcher.locale.languageCode,
  ),
);
