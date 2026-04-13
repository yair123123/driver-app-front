class Settings {
  static const _unset = Object();

  final bool isDarkMode;
  final int? defaultStationId;

  const Settings({required this.isDarkMode, this.defaultStationId});

  const Settings.initial() : isDarkMode = false, defaultStationId = null;

  Settings copyWith({bool? isDarkMode, Object? defaultStationId = _unset}) {
    return Settings(
      isDarkMode: isDarkMode ?? this.isDarkMode,
      defaultStationId:
          defaultStationId == _unset
              ? this.defaultStationId
              : defaultStationId as int?,
    );
  }
}
