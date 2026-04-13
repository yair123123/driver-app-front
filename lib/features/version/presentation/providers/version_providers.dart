import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/version/data/datasources/version_remote_data_source.dart';
import 'package:driver_app/features/version/data/repositories/version_repository_impl.dart';
import 'package:driver_app/features/version/domain/repositories/version_repository.dart';
import 'package:driver_app/features/version/domain/usecases/check_app_version_compatibility_use_case.dart';
import 'package:driver_app/features/version/presentation/notifiers/app_version_controller.dart';
import 'package:driver_app/features/version/presentation/states/app_version_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final versionRemoteDataSourceProvider = Provider<VersionRemoteDataSource>((
  ref,
) {
  return VersionRemoteDataSource(ref.watch(apiClientProvider));
});

final versionRepositoryProvider = Provider<VersionRepository>((ref) {
  return VersionRepositoryImpl(ref.watch(versionRemoteDataSourceProvider));
});

final checkAppVersionCompatibilityUseCaseProvider =
    Provider<CheckAppVersionCompatibilityUseCase>((ref) {
      return CheckAppVersionCompatibilityUseCase(
        ref.watch(versionRepositoryProvider),
      );
    });

final appVersionControllerProvider =
    NotifierProvider<AppVersionController, AppVersionState>(
      AppVersionController.new,
    );
