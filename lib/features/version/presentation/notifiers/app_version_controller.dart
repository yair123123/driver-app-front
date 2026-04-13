import 'dart:async';

import 'package:driver_app/core/logger/firebase_logger.dart';
import 'package:driver_app/features/version/domain/entities/version_info.dart';
import 'package:driver_app/features/version/presentation/providers/version_providers.dart';
import 'package:driver_app/features/version/presentation/states/app_version_state.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod/riverpod.dart';

class AppVersionController extends Notifier<AppVersionState> {
  Future<void>? _inFlight;

  @override
  AppVersionState build() {
    return const AppVersionInitial();
  }

  Future<void> checkOnStartup() async {
    final current = _inFlight;
    if (current != null) {
      return current;
    }

    final future = _runCheck();
    _inFlight = future;
    future.whenComplete(() {
      _inFlight = null;
    });

    return future;
  }

  Future<void> _runCheck() async {
    state = const AppVersionLoading();

    try {
      final packageInfo = await PackageInfo.fromPlatform();
      final currentAppVersion = _resolveCurrentAppVersion(packageInfo);
      final versionInfo = await ref.read(
        checkAppVersionCompatibilityUseCaseProvider,
      )(currentAppVersion);

      state = _mapState(versionInfo, currentAppVersion);
    } catch (error, stack) {
      FirebaseLogger.e('App version check failed', error: error, stack: stack);
      state = AppVersionFailure(_describeError(error));
    }
  }

  AppVersionState _mapState(VersionInfo versionInfo, String currentAppVersion) {
    if (versionInfo.requiresForceUpdate) {
      return AppVersionForceUpdateRequired(versionInfo);
    }

    if (_hasOptionalUpdate(versionInfo, currentAppVersion)) {
      return AppVersionOptionalUpdateAvailable(versionInfo);
    }

    return AppVersionNoUpdateNeeded(versionInfo);
  }

  String _resolveCurrentAppVersion(PackageInfo packageInfo) {
    final version = packageInfo.version.trim();
    if (version.isNotEmpty) {
      return version;
    }

    final buildNumber = packageInfo.buildNumber.trim();
    if (buildNumber.isNotEmpty) {
      return buildNumber;
    }

    return '0';
  }

  bool _hasOptionalUpdate(VersionInfo versionInfo, String currentAppVersion) {
    if (versionInfo.mustUpdate != false) {
      return false;
    }

    final latestVersion = versionInfo.latestAppVersion.trim();
    if (latestVersion.isEmpty) {
      return false;
    }

    final effectiveCurrentVersion =
        versionInfo.appVersion?.trim().isNotEmpty == true
            ? versionInfo.appVersion!.trim()
            : currentAppVersion;

    return _compareVersions(latestVersion, effectiveCurrentVersion) > 0;
  }

  int _compareVersions(String left, String right) {
    final leftParts = _parseVersion(left);
    final rightParts = _parseVersion(right);

    if (leftParts.isEmpty || rightParts.isEmpty) {
      return 0;
    }

    final length =
        leftParts.length > rightParts.length
            ? leftParts.length
            : rightParts.length;

    for (var index = 0; index < length; index++) {
      final leftValue = index < leftParts.length ? leftParts[index] : 0;
      final rightValue = index < rightParts.length ? rightParts[index] : 0;

      if (leftValue != rightValue) {
        return leftValue.compareTo(rightValue);
      }
    }

    return 0;
  }

  List<int> _parseVersion(String rawVersion) {
    return RegExp(r'\d+')
        .allMatches(rawVersion)
        .map((match) => int.parse(match.group(0)!))
        .toList(growable: false);
  }

  String _describeError(Object error) {
    final message = error.toString().trim();
    if (message.isNotEmpty) {
      return message;
    }

    return 'Version check failed.';
  }
}
