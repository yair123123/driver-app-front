import 'package:driver_app/features/version/domain/entities/version_info.dart';

sealed class AppVersionState {
  const AppVersionState();
}

class AppVersionInitial extends AppVersionState {
  const AppVersionInitial();
}

class AppVersionLoading extends AppVersionState {
  const AppVersionLoading();
}

class AppVersionNoUpdateNeeded extends AppVersionState {
  final VersionInfo versionInfo;

  const AppVersionNoUpdateNeeded(this.versionInfo);
}

class AppVersionForceUpdateRequired extends AppVersionState {
  final VersionInfo versionInfo;

  const AppVersionForceUpdateRequired(this.versionInfo);
}

class AppVersionOptionalUpdateAvailable extends AppVersionState {
  final VersionInfo versionInfo;

  const AppVersionOptionalUpdateAvailable(this.versionInfo);
}

class AppVersionFailure extends AppVersionState {
  final String message;

  const AppVersionFailure(this.message);
}

extension AppVersionStateX on AppVersionState {
  bool get blocksAppUsage => this is AppVersionForceUpdateRequired;

  VersionInfo? get versionInfoOrNull {
    final state = this;

    if (state is AppVersionNoUpdateNeeded) {
      return state.versionInfo;
    }
    if (state is AppVersionForceUpdateRequired) {
      return state.versionInfo;
    }
    if (state is AppVersionOptionalUpdateAvailable) {
      return state.versionInfo;
    }

    return null;
  }
}
