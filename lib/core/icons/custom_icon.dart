import 'package:flutter/foundation.dart';

@immutable
class CustomIcon {
  final String fileName;
  final bool flipInRtl;

  const CustomIcon._(this.fileName, {this.flipInRtl = false});

  // ===== Arrows =====
  static const arrowRight = CustomIcon._('arrow-right.svg', flipInRtl: true);

  static const arrowUp = CustomIcon._('arrow_up.svg');
  static const arrowUpBlack = CustomIcon._('arrow_up_black.svg');
  static const arrowUpWhite = CustomIcon._('arrow_up_white.svg');

  static const whiteArrow = CustomIcon._('white_arrow.svg', flipInRtl: true);

  // ===== Navigation / General =====
  static const backRight = CustomIcon._('back_right.svg', flipInRtl: true);
  static const backLeft = CustomIcon._('back_left.svg', flipInRtl: true);

  static const searchOnboarding = CustomIcon._('search_onboarding.svg');

  // ===== Actions =====
  static const copy = CustomIcon._('copy_icon.svg');
  static const share = CustomIcon._('share_icon.svg');
  static const shareMessage = CustomIcon._('link.svg');
  static const galleryTick = CustomIcon._('gallery-tick.svg');
  // ===== Status / Selection =====
  static const emptySelectionBlack = CustomIcon._('empty_selection_black.svg');
  static const emptySelectionWhite = CustomIcon._('empty_selection_white.svg');

  static const fullSelectionBlack = CustomIcon._('full_selection_black.svg');
  static const fullSelectionWhite = CustomIcon._('full_selection_white.svg');

  static const partialSelectionBlack = CustomIcon._(
    'partial_selection_black.svg',
  );
  static const partialSelectionWhite = CustomIcon._(
    'partial_selection_white.svg',
  );

  // ===== Info =====
  static const info = CustomIcon._('info_icon.svg');


  static const shieldSecurity = CustomIcon._('shield_security_icon.svg');

  // ===== Content =====

  static const categories = CustomIcon._('categories_icon.svg');
  static const earth = CustomIcon._('earth_icon.svg');
  static const location = CustomIcon._('location_icon.svg');
  static const message = CustomIcon._('message_icon.svg');
  static const notification = CustomIcon._('notification_icon.svg');

  static const star = CustomIcon._('star.svg');

  // ===== Tabs =====
  static const tabAi = CustomIcon._('tab_ai.svg');
  static const tabAiActive = CustomIcon._('tab_ai_active.svg');
  static const tabAiInactive = CustomIcon._('tab_ai_inactive.svg');

  static const tabGroups = CustomIcon._('tab_groups.svg');
  static const tabGroupsActive = CustomIcon._('tab_groups_active.svg');

  static const tabHome = CustomIcon._('tab_home.svg');
  static const tabHomeActive = CustomIcon._('tab_home_active.svg');
  static const tabHomeInactive = CustomIcon._('tab_home_inactive.svg');

  static const tabSearch = CustomIcon._('tab_search.svg');
  static const tabSearchActive = CustomIcon._('tab_search_active.svg');
  static const tabSearchInactive = CustomIcon._('tab_search_inactive.svg');

  static const tabSummary = CustomIcon._('tab_summary.svg');
  static const tabSummaryActive = CustomIcon._('tab_summary_active.svg');
  static const tabSummaryInactive = CustomIcon._('tab_summary_inactive.svg');
}

const navBarInactiveIcons = [
  CustomIcon.tabAiInactive,
  CustomIcon.tabSummaryInactive,
  CustomIcon.tabSearchInactive,
  CustomIcon.tabHomeInactive,
];
