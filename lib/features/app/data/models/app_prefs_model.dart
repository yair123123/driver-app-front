import 'package:hive/hive.dart';

import '../../../../core/services/hive/hive_type_ids.dart';

part 'app_prefs_model.g.dart';

@HiveType(typeId: HiveTypeIds.appPrefsModel)
class AppPrefsModel {
  @HiveField(0)
  final String selectedAreaCode;
  @HiveField(1)
  final String selectedLangCode;
  @HiveField(2)
  final Map<String, String> lastReadByTopic;
  @HiveField(3)
  final List<String> recentFilteredTopic;
  @HiveField(4)
  final bool isOnGroupsPage;
  @HiveField(5)
  final bool wereMessageNewGroupsPresented;
  @HiveField(6)
  final Map<String, String> lastReadMessageByGroup;

  const AppPrefsModel({
    this.selectedAreaCode = 'all',
    this.selectedLangCode = 'he',
    this.lastReadByTopic = const {},
    this.recentFilteredTopic = const [],
    this.isOnGroupsPage = false,
    this.wereMessageNewGroupsPresented = false,
    this.lastReadMessageByGroup = const {},
  });

  AppPrefsModel copyWith({
    String? selectedAreaCode,
    String? selectedLangCode,
    Map<String, String>? lastReadByTopic,
    List<String>? recentFilteredTopic,
    bool? isOnGroupsPage,
    bool? wereMessageNewGroupsPresented,
    Map<String, String>? lastReadMessageByGroup,
  }) {
    return AppPrefsModel(
      selectedAreaCode: selectedAreaCode ?? this.selectedAreaCode,
      selectedLangCode: selectedLangCode ?? this.selectedLangCode,
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
