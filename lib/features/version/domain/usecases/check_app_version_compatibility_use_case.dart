import 'package:driver_app/features/version/domain/entities/version_info.dart';
import 'package:driver_app/features/version/domain/repositories/version_repository.dart';

class CheckAppVersionCompatibilityUseCase {
  final VersionRepository repository;

  CheckAppVersionCompatibilityUseCase(this.repository);

  Future<VersionInfo> call(String appVersion) {
    return repository.checkCompatibility(appVersion: appVersion);
  }
}
