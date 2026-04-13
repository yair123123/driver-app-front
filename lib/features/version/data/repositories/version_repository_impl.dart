import 'package:driver_app/features/version/data/datasources/version_remote_data_source.dart';
import 'package:driver_app/features/version/domain/entities/version_info.dart';
import 'package:driver_app/features/version/domain/repositories/version_repository.dart';

class VersionRepositoryImpl implements VersionRepository {
  final VersionRemoteDataSource remoteDataSource;

  VersionRepositoryImpl(this.remoteDataSource);

  @override
  Future<VersionInfo> checkCompatibility({required String appVersion}) async {
    final model = await remoteDataSource.checkAppVersion(
      appVersion: appVersion,
    );
    return model.toEntity();
  }
}
