class SettingsModel {
  final bool isDarkMode;
  final int? defaultStationId;

  const SettingsModel({required this.isDarkMode, this.defaultStationId});

  factory SettingsModel.fromServerJson(Map<String, dynamic> json) {
    final settingsJson = _extractSettingsJson(json);

    return SettingsModel(
      isDarkMode:
          _readBool(settingsJson, const [
            'is_dark_mode',
            'isDarkMode',
            'dark_mode',
            'darkMode',
          ]) ??
          false,
      defaultStationId:
          _readInt(settingsJson, const [
            'default_station_id',
            'defaultStationId',
            'station_id',
            'stationId',
          ]) ??
          _readNestedStationId(settingsJson['default_station']) ??
          _readNestedStationId(settingsJson['defaultStation']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'is_dark_mode': isDarkMode,
      if (defaultStationId != null) 'default_station_id': defaultStationId,
    };
  }

  static Map<String, dynamic> _extractSettingsJson(Map<String, dynamic> json) {
    final nested = json['settings'];
    if (nested is Map<String, dynamic>) {
      return nested;
    }
    if (nested is Map) {
      return Map<String, dynamic>.from(nested);
    }
    return json;
  }

  static bool? _readBool(Map<String, dynamic> json, List<String> keys) {
    for (final key in keys) {
      final value = json[key];
      if (value is bool) {
        return value;
      }
      if (value is num) {
        return value != 0;
      }
      if (value is String) {
        final normalized = value.trim().toLowerCase();
        if (normalized == 'true' || normalized == '1') {
          return true;
        }
        if (normalized == 'false' || normalized == '0') {
          return false;
        }
      }
    }
    return null;
  }

  static int? _readInt(Map<String, dynamic> json, List<String> keys) {
    for (final key in keys) {
      final value = json[key];
      final parsed = _parseInt(value);
      if (parsed != null) {
        return parsed;
      }
    }
    return null;
  }

  static int? _readNestedStationId(dynamic rawStation) {
    if (rawStation is Map<String, dynamic>) {
      return _readInt(rawStation, const ['station_id', 'stationId', 'id']);
    }
    if (rawStation is Map) {
      return _readInt(Map<String, dynamic>.from(rawStation), const [
        'station_id',
        'stationId',
        'id',
      ]);
    }
    return _parseInt(rawStation);
  }

  static int? _parseInt(dynamic value) {
    if (value is int) {
      return value;
    }
    if (value is num) {
      return value.toInt();
    }
    if (value is String) {
      return int.tryParse(value);
    }
    return null;
  }
}
