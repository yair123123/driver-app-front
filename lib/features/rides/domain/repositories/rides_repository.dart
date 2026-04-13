import 'package:driver_app/features/rides/domain/entities/ride/ride.dart';
import 'package:driver_app/features/rides/presentation/states/rides_query.dart';

abstract class RidesRepository {
  Future<List<Ride>> getRides(RidesQuery query);
}
