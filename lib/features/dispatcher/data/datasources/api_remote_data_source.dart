import 'package:driver_app/core/http/api_client.dart';
import 'package:driver_app/features/dispatcher/data/models/offer_model.dart';

class ApiRemoteDataSource {
  ApiClient apiClient;

  ApiRemoteDataSource(this.apiClient);

  Future<void> sendNewOffer(OfferModel offer) async {
    final res = await apiClient.post(
      "/new-offer",
      body: offer.toJson(),
      fromJson: (_) {},
    );
    res.match((f) => throw f, (_) {});
  }

  Future<void> updateOffer(OfferModel offer) async {
    final res = await apiClient.post(
      "/update-offer",
      body: offer.toJson(),
      fromJson: (_) {},
    );
    res.match((f) => throw f, (_) {});
  }
}
