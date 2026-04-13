import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender.freezed.dart';

enum GenderType { male, female, unknown }

@freezed
class Gender with _$Gender {
  const Gender._();

  const factory Gender({
    required GenderType value,
  }) = _Gender;

  factory Gender.fromString(String raw) {
    switch (raw.toLowerCase()) {
      case 'male':
        return const Gender(value: GenderType.male);
      case 'female':
        return const Gender(value: GenderType.female);
      default:
        return const Gender(value: GenderType.unknown);
    }
  }

  String toRaw() {
    switch (value) {
      case GenderType.male:
        return 'male';
      case GenderType.female:
        return 'female';
      case GenderType.unknown:
        return 'unknown';
    }
  }
}