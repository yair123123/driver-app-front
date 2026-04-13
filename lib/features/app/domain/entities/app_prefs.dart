class AppPrefs {
  final Map<String, String> lastReadByTopic;
  final List<String> recentFilteredTopic;
  final bool isOnGroupsPage;
  final bool wereMessageNewGroupsPresented;
  final Map<String, String> lastReadMessageByGroup;
  final int? defaultStationId;

  const AppPrefs({
    this.defaultStationId,
    this.lastReadByTopic = const {},
    this.recentFilteredTopic = const [],
    this.isOnGroupsPage = false,
    this.wereMessageNewGroupsPresented = false,
    this.lastReadMessageByGroup = const {},
  });

  AppPrefs copyWith({
    int? defaultStationId,
    String? selectedAreaCode,
    String? selectedLangCode,
    Map<String, String>? lastReadByTopic,
    List<String>? recentFilteredTopic,
    bool? isOnGroupsPage,
    bool? wereMessageNewGroupsPresented,
    Map<String, String>? lastReadMessageByGroup,
  }) {
    return AppPrefs(
      defaultStationId: defaultStationId ?? this.defaultStationId,

      lastReadByTopic: lastReadByTopic ?? this.lastReadByTopic,
      recentFilteredTopic: recentFilteredTopic ?? this.recentFilteredTopic,
      isOnGroupsPage: isOnGroupsPage ?? this.isOnGroupsPage,
      wereMessageNewGroupsPresented:
          wereMessageNewGroupsPresented ?? this.wereMessageNewGroupsPresented,
      lastReadMessageByGroup:
          lastReadMessageByGroup ?? this.lastReadMessageByGroup,
    );
  }
}
