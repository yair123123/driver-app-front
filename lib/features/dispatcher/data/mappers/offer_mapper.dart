import 'package:driver_app/features/dispatcher/data/models/offer_model.dart';
import 'package:driver_app/features/dispatcher/domain/entities/offer.dart';

import 'address_mapper.dart';

extension OfferMapper on Offer {
  OfferModel toModel() {
    return OfferModel(id: id,
        stationId: stationId,
        origin: origin.toModel(),
        destination: destination.toModel(),
        price: price,
        passengerPhone: passengerPhone,
        comments: comments,
        timestamp: timestamp);
  }
}extension OfferModelMapper on OfferModel {
  Offer toEntity() {
    return Offer(id: id,
        stationId: stationId,
        origin: origin.toEntity(),
        destination: destination.toEntity(),
        price: price,
        passengerPhone: passengerPhone,
        comments: comments,
        timestamp: timestamp);
  }
}