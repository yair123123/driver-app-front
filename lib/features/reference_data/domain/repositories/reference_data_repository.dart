import 'package:driver_app/features/reference_data/domain/entities/reference_data_bundle.dart';

abstract class ReferenceDataRepository {
  Future<ReferenceDataBundle> getReferenceData();
}
