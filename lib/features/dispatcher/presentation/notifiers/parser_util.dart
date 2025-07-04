import 'package:driver_app/features/bootstrap/domain/entities/ride/ride.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';
import 'package:uuid/uuid.dart';

class RideParseResult {
  final Ride? ride;
  final String? error;

  RideParseResult.success(this.ride) : error = null;
  RideParseResult.failure(this.error) : ride = null;

  bool get isSuccess => ride != null;
}

RideParseResult parseRideFromText(String text, int? stationId) {
  final lines = text.split('\n').map((e) => e.trim()).toList();

  if (stationId == null) {
    return RideParseResult.failure('תחנה לא נבחרה.');
  }

  final requiredFields = [
    'עיר מוצא',
    'שכונת מוצא',
    'עיר יעד',
    'שכונת יעד',
    'מחיר',
    'טלפון נוסע',
    'הערות',
  ];

  for (int i = 0; i < 6; i++) {
    if (i >= lines.length || lines[i].isEmpty) {
      return RideParseResult.failure('השדה "${requiredFields[i]}" חסר או ריק.');
    }
  }

  final cost = int.tryParse(lines[4]);
  if (cost == null) {
    return RideParseResult.failure('המחיר חייב להיות מספר תקין.');
  }

  final phone = lines[5];
  try {
    final parsedPhone = PhoneNumber.parse(phone, callerCountry: IsoCode.IL);
    if (!parsedPhone.isValid(type: PhoneNumberType.mobile)) {
      return RideParseResult.failure('מספר טלפון לא תקין.');
    }
  } catch (_) {
    return RideParseResult.failure('מספר טלפון לא תקין בפורמט.');
  }

  final comments = lines.length > 6 ? lines.sublist(6).join('\n') : '';

  final ride = Ride(
    id: const Uuid().v4(),
    stationId: stationId,
    origin: Location(city: lines[0], neighborhood: lines[1], street: ''),
    destination: Location(city: lines[2], neighborhood: lines[3], street: ''),
    price: lines[4],
    passengerPhone: lines[5],
    comments: comments,
    timestamp: DateTime.now(),
  );

  return RideParseResult.success(ride);
}
