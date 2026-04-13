import 'package:uuid/uuid.dart';

import '../../domain/entities/address.dart';

class Offer {


  const Offer({
    required this.id,
    required this.stationId,
    required this.origin,
    required this.destination,
    required this.price,
    required this.passengerPhone,
    required this.comments,
    required this.timestamp,
  });

  final String id;
  final int stationId;
  final Address origin;
  final Address destination;
  final String price;
  final String passengerPhone;
  final String comments;
  final DateTime timestamp;

  Offer copyWith({
    String? id,
    int? stationId,
    Address? origin,
    Address? destination,
    String? price,
    String? passengerPhone,
    String? comments,
    DateTime? timestamp,
  }) {
    return Offer(
      id: id ?? this.id,
      stationId: stationId ?? this.stationId,
      origin: origin ?? this.origin,
      destination: destination ?? this.destination,
      price: price ?? this.price,
      passengerPhone: passengerPhone ?? this.passengerPhone,
      comments: comments ?? this.comments,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  static Offer initialOfferFromLines(List<String> lines, int stationId) {
    return Offer(
      id: const Uuid().v4(),
      stationId: stationId,
      origin: Address(
        city: lines.isNotEmpty ? lines[0] : '',
        neighborhood: lines.length > 1 ? lines[1] : '',
        street: '',
      ),
      destination: Address(
        city: lines.length > 2 ? lines[2] : '',
        neighborhood: lines.length > 3 ? lines[3] : '',
        street: '',
      ),
      price: lines.length > 4 ? lines[4] : '',
      passengerPhone: lines.length > 5 ? lines[5] : '',
      comments: lines.length > 6 ? lines.sublist(6).join('\n') : '',
      timestamp: DateTime.now(),
    );
  }
}
