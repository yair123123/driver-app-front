import 'package:driver_app/features/version/domain/entities/version_info.dart';

abstract class VersionRepository {
  Future<VersionInfo> checkCompatibility({required String appVersion});
}
