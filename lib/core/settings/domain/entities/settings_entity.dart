import 'package:driver_app/features/bootstrap/domain/entities/station/station.dart';

class Settings {
  bool isDarkMode;
  Station? defaultStation;

  Settings({required this.isDarkMode,this.defaultStation});

  Settings copyWith({bool? isDarkMode,Station? defaultStation}) {
    return Settings(
      isDarkMode: isDarkMode ?? this.isDarkMode,
      defaultStation: defaultStation ?? this.defaultStation
      
    );
  }
}