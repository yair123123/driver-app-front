import 'package:driver_app/features/app/data/models/app_prefs_model.dart';
import 'package:driver_app/features/app/domain/entities/app_prefs.dart';

extension AppPrefsMapper on AppPrefs {
  AppPrefsModel toModel() {
    return AppPrefsModel(
      selectedAreaCode: selectedAreaCode,
      selectedLangCode: selectedLangCode,
      lastReadByTopic: lastReadByTopic,
      recentFilteredTopic: recentFilteredTopic,
      isOnGroupsPage: isOnGroupsPage,
      wereMessageNewGroupsPresented: wereMessageNewGroupsPresented,
      lastReadMessageByGroup: lastReadMessageByGroup,
    );
  }
}

extension AppPrefsModelMapper on AppPrefsModel {
  AppPrefs toEntity() {
    return AppPrefs(
      selectedAreaCode: selectedAreaCode,
      selectedLangCode: selectedLangCode,
      lastReadByTopic: lastReadByTopic,
      recentFilteredTopic: recentFilteredTopic,
      isOnGroupsPage: isOnGroupsPage,
      wereMessageNewGroupsPresented: wereMessageNewGroupsPresented,
      lastReadMessageByGroup: lastReadMessageByGroup,
    );
  }
}
