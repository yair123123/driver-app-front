import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_model.dart';

part 'offer_model.freezed.dart';
part 'offer_model.g.dart';

@freezed
class OfferModel with _$OfferModel {
  const factory OfferModel({
    required String id,
    required int stationId,
    required AddressModel origin,
    required AddressModel destination,
    required String price,
    required String passengerPhone,
    required String comments,
    required DateTime timestamp,
  }) = _OfferModel;

  factory OfferModel.fromJson(Map<String, dynamic> json) =>
      _$OfferModelFromJson(json);
}