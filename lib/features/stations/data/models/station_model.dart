import 'package:freezed_annotation/freezed_annotation.dart';

part 'station_model.freezed.dart';
part 'station_model.g.dart';

@freezed
class StationModel with _$StationModel {
  const factory StationModel({
    required int id,
    required String name,
    required bool isActive,
  }) = _StationModel;

  factory StationModel.fromJson(Map<String, dynamic> json) =>
      _$StationModelFromJson(_normalizeJson(json));

  static Map<String, dynamic> _normalizeJson(Map<String, dynamic> json) {
    return <String, dynamic>{
      'id': _readInt(json, const ['id', 'station_id', 'stationId']),
      'name': _readString(json, const ['name', 'station_name', 'stationName']),
      'isActive': _readBool(
        json,
        const ['isActive', 'is_active', 'active'],
      ),
    };
  }

  static int _readInt(Map<String, dynamic> json, List<String> keys) {
    for (final key in keys) {
      final value = json[key];
      if (value is int) {
        return value;
      }
      if (value is num) {
        return value.toInt();
      }
      if (value is String) {
        final parsed = int.tryParse(value);
        if (parsed != null) {
          return parsed;
        }
      }
    }

    throw const FormatException('Station id is missing or invalid');
  }

  static String _readString(Map<String, dynamic> json, List<String> keys) {
    for (final key in keys) {
      final value = json[key];
      if (value is String && value.trim().isNotEmpty) {
        return value.trim();
      }
    }

    throw const FormatException('Station name is missing or invalid');
  }

  static bool _readBool(Map<String, dynamic> json, List<String> keys) {
    for (final key in keys) {
      final value = json[key];
      if (value is bool) {
        return value;
      }
      if (value is num) {
        return value != 0;
      }
      if (value is String) {
        switch (value.trim().toLowerCase()) {
          case 'true':
          case '1':
          case 'yes':
            return true;
          case 'false':
          case '0':
          case 'no':
            return false;
        }
      }
    }

    return false;
  }
}
