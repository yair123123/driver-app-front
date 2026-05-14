import 'package:hive/hive.dart';

import '../../../../core/services/hive/hive_type_ids.dart';

part 'app_prefs_model.g.dart';

@HiveType(typeId: HiveTypeIds.appPrefsModel)
class AppPrefsModel {
  @HiveField(0)
  final Map<String, String> lastReadByTopic;
  @HiveField(1)
  final List<String> recentFilteredTopic;
  @HiveField(2)
  final bool isOnGroupsPage;
  @HiveField(3)
  final bool wereMessageNewGroupsPresented;
  @HiveField(4)
  final Map<String, String> lastReadMessageByGroup;
  @HiveField(5)
  final bool permissionsOnboardingCompleted;

  const AppPrefsModel({
    this.lastReadByTopic = const {},
    this.recentFilteredTopic = const [],
    this.isOnGroupsPage = false,
    this.wereMessageNewGroupsPresented = false,
    this.lastReadMessageByGroup = const {},
    this.permissionsOnboardingCompleted = false,
  });

  AppPrefsModel copyWith({
    String? selectedAreaCode,
    String? selectedLangCode,
    Map<String, String>? lastReadByTopic,
    List<String>? recentFilteredTopic,
    bool? isOnGroupsPage,
    bool? wereMessageNewGroupsPresented,
    Map<String, String>? lastReadMessageByGroup,
    bool? permissionsOnboardingCompleted,
  }) {
    return AppPrefsModel(
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
