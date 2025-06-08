class InitialScreen {
  List<String> cities;
  Map<String, List<String>> neighborhoods;
  Map<String, int> prices;

  InitialScreen(
    this.cities,
    this.neighborhoods,
    this.prices,
  );

  InitialScreen copyWith({
    List<String>? cities,
    Map<String, List<String>>? neighborhoods,
    Map<String, int>? prices,
  }) {
    return InitialScreen(
      cities ?? this.cities,
      neighborhoods ?? this.neighborhoods,
      prices ?? this.prices,
    );
  }
}
