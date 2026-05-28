import 'package:driver_app/features/rides/domain/entities/ride/ride_map_item.dart';
import 'package:driver_app/features/rides/domain/entities/ride_filter_params.dart';
import 'package:driver_app/features/rides/domain/repositories/rides_repository.dart';

class GetRidesUseCase {
  const GetRidesUseCase(this._repository);

  final RidesRepository _repository;

  Future<List<RideMapItem>> call(RideFilterParams params) {
    return _repository.getRides(params);
  }
}
