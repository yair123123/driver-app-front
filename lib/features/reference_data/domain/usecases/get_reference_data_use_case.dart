import 'package:driver_app/features/reference_data/domain/entities/reference_data_bundle.dart';
import 'package:driver_app/features/reference_data/domain/repositories/reference_data_repository.dart';

class GetReferenceDataUseCase {
  GetReferenceDataUseCase(this._repository);

  final ReferenceDataRepository _repository;

  Future<ReferenceDataBundle> call() {
    return _repository.getReferenceData();
  }
}
