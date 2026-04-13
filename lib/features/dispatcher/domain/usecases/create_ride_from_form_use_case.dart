import 'package:driver_app/features/dispatcher/domain/entities/address.dart';
import 'package:driver_app/features/dispatcher/domain/entities/offer.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';
import 'package:uuid/uuid.dart';

import '../../../dispatcher/domain/entities/offer.dart';

class CreateRideFromFormParams {
  final int stationId;
  final String originCity;
  final String originNeighborhood;
  final String originStreet;
  final String destinationCity;
  final String destinationNeighborhood;
  final String destinationStreet;
  final String price;
  final String passengerPhone;
  final String comments;

  const CreateRideFromFormParams({
    required this.stationId,
    required this.originCity,
    required this.originNeighborhood,
    required this.originStreet,
    required this.destinationCity,
    required this.destinationNeighborhood,
    required this.destinationStreet,
    required this.price,
    required this.passengerPhone,
    required this.comments,
  });
}

class CreateRideFromFormResult {
  final Offer? offer;
  final String? error;

  const CreateRideFromFormResult._({
    this.offer,
    this.error,
  });

  const CreateRideFromFormResult.success(Offer offer) : this._(offer: offer);

  const CreateRideFromFormResult.failure(String error) : this._(error: error);

  bool get isSuccess => offer != null;
}

class CreateRideFromFormUsecase {
  const CreateRideFromFormUsecase();

  CreateRideFromFormResult call(CreateRideFromFormParams params) {
    if (params.stationId == null) {
      return const CreateRideFromFormResult.failure('לא נבחרה תחנה');
    }

    if (params.originCity.trim().isEmpty) {
      return const CreateRideFromFormResult.failure('עיר מוצא היא שדה חובה');
    }

    if (params.originNeighborhood.trim().isEmpty) {
      return const CreateRideFromFormResult.failure('שכונת מוצא היא שדה חובה');
    }

    if (params.destinationCity.trim().isEmpty) {
      return const CreateRideFromFormResult.failure('עיר יעד היא שדה חובה');
    }

    if (params.destinationNeighborhood.trim().isEmpty) {
      return const CreateRideFromFormResult.failure('שכונת יעד היא שדה חובה');
    }

    final parsedPrice = int.tryParse(params.price.trim());
    if (parsedPrice == null || parsedPrice <= 0) {
      return const CreateRideFromFormResult.failure(
        'המחיר חייב להיות מספר חיובי',
      );
    }

    try {
      final parsedPhone = PhoneNumber.parse(
        params.passengerPhone.trim(),
        callerCountry: IsoCode.IL,
      );

      if (!parsedPhone.isValid(type: PhoneNumberType.mobile)) {
        return const CreateRideFromFormResult.failure('מספר הטלפון אינו תקין');
      }
    } catch (_) {
      return const CreateRideFromFormResult.failure('מספר הטלפון אינו תקין');
    }

    final offer = Offer(
      id: const Uuid().v4(),
      stationId: params.stationId,
      origin: Address(
        city: params.originCity.trim(),
        neighborhood: params.originNeighborhood.trim(),
        street: params.originStreet.trim(),
      ),
      destination: Address(
        city: params.destinationCity.trim(),
        neighborhood: params.destinationNeighborhood.trim(),
        street: params.destinationStreet.trim(),
      ),
      price: params.price.trim(),
      passengerPhone: params.passengerPhone.trim(),
      comments: params.comments.trim(),
      timestamp: DateTime.now(),
    );

    return CreateRideFromFormResult.success(offer);
  }
}