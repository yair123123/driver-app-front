class AppPrefs {
  final bool darkMode;

  AppPrefs({bool this.darkMode = false});

  AppPrefs copyWith({bool? darkMode}) {
    return AppPrefs(darkMode: darkMode ?? this.darkMode);
  }
}
