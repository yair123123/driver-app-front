class AppPrefs {
  final Map<String, String> lastReadByTopic;
  final List<String> recentFilteredTopic;
  final bool isOnGroupsPage;
  final bool wereMessageNewGroupsPresented;
  final Map<String, String> lastReadMessageByGroup;
  final int? defaultStationId;
  final bool permissionsOnboardingCompleted;

  const AppPrefs({
    this.defaultStationId,
    this.lastReadByTopic = const {},
    this.recentFilteredTopic = const [],
    this.isOnGroupsPage = false,
    this.wereMessageNewGroupsPresented = false,
    this.lastReadMessageByGroup = const {},
    this.permissionsOnboardingCompleted = false,
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
    bool? permissionsOnboardingCompleted,
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
      permissionsOnboardingCompleted:
          permissionsOnboardingCompleted ?? this.permissionsOnboardingCompleted,
    );
  }
}
