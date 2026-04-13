import 'package:driver_app/features/dispatcher/data/models/address_model.dart';
import 'package:driver_app/features/dispatcher/domain/entities/address.dart';

extension AddressMapper on Address {
  AddressModel toModel() {
    return AddressModel(city: city, neighborhood: neighborhood, street: street);
  }
}

extension AddressModelMapper on AddressModel {
  Address toEntity() {
    return Address(city: city, neighborhood: neighborhood, street: street);
  }
}
