import 'package:driver_app/features/rides/domain/entities/ride/ride.dart';
import 'package:driver_app/features/rides/domain/repositories/rides_repository.dart';
import 'package:driver_app/features/rides/presentation/states/rides_query.dart';

class GetRidesUseCase {
  GetRidesUseCase(this._repository);

  final RidesRepository _repository;

  Future<List<Ride>> call(RidesQuery query) {
    return _repository.getRides(query);
  }
}
