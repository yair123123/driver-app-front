import '../entities/ride/ride_map_item.dart';
import '../entities/ride_filter_params.dart';

abstract class RidesRepository {
  Future<List<RideMapItem>> getRides(RideFilterParams params);
}
