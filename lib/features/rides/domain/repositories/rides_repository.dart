import 'package:driver_app/features/rides/presentation/states/rides_query.dart';

import '../entities/ride/ride_map_item.dart';

abstract class RidesRepository {
  Future<List<RideMapItem>> getRides(RidesQuery query);
}
