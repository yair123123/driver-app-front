
class Settings {
  bool isDarkMode;
  int? defaultStationId;

  Settings({required this.isDarkMode,this.defaultStationId});

  Settings copyWith({bool? isDarkMode,int? defaultStationId}) {
    return Settings(
      isDarkMode: isDarkMode ?? this.isDarkMode,
      defaultStationId: defaultStationId ?? this.defaultStationId
      
    );
  }
}