class InitialScreen {
  List<String> cities;
  Map<String, List<String>> neighborhoods;
  Map<String, List<int>> prices;
  List<String> comments;

  InitialScreen(
    this.cities,
    this.neighborhoods,
    this.prices,
    this.comments,
  );

  InitialScreen copyWith({
    List<String>? cities,
    Map<String, List<String>>? neighborhoods,
    Map<String, List<int>>? prices,
    List<String>? comments,
  }) {
    return InitialScreen(
      cities ?? this.cities,
      neighborhoods ?? this.neighborhoods,
      prices ?? this.prices,
      comments ?? this.comments,
    );
  }
}
