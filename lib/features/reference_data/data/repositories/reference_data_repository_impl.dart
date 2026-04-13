import 'package:driver_app/features/reference_data/data/datasources/reference_data_local_data_source.dart';
import 'package:driver_app/features/reference_data/data/datasources/reference_data_remote_data_source.dart';
import 'package:driver_app/features/reference_data/data/mappers/reference_data_mapper.dart';
import 'package:driver_app/features/reference_data/domain/entities/reference_data_bundle.dart';
import 'package:driver_app/features/reference_data/domain/repositories/reference_data_repository.dart';

class ReferenceDataRepositoryImpl implements ReferenceDataRepository {
  ReferenceDataRepositoryImpl(this._remoteDataSource, this._localDataSource);

  final ReferenceDataRemoteDataSource _remoteDataSource;
  final ReferenceDataLocalDataSource _localDataSource;

  @override
  Future<ReferenceDataBundle> getReferenceData() async {
    try {
      final remote = await _remoteDataSource.fetchReferenceData();
      return remote.toEntity();
    } catch (_) {
      final local = await _localDataSource.loadReferenceData();
      return local.toEntity();
    }
  }
}
