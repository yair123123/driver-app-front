import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/dispatcher/data/models/create_ride_from_dispatcher_request_dto.dart';

class ApiRemoteDataSource {
  ApiClient apiClient;

  ApiRemoteDataSource(this.apiClient);

  Future<void> sendNewOffer(CreateRideFromDispatcherRequestDto offer) async {
    final res = await apiClient.post(
      "/",
      body: offer.toJson(),
      fromJson: (_) {},
    );
    res.match((f) => throw f, (_) {});
  }

}
