import 'package:flutter/material.dart';

class AppSpacing {
  AppSpacing._();

  static const double xs = 4;
  static const double s = 6;
  static const double sm = 8;
  static const double m = 12;
  static const double ml = 16;
  static const double mlg = 18;

  static const double lg = 24;
  static const double lgg = 26;
  static const double lgx = 28;
  static const double xl = 32;
  static const double xxl = 36;
  static const double xxxl = 40;
  static const double xxxxl = 44;
  static const double big = 128;

  static const double pageHorizontal = 38;
  static const double pageVertical = 24;

  static const double tabIconSize = 20;

  static const EdgeInsets pagePadding = EdgeInsets.symmetric(
    horizontal: pageHorizontal,
    vertical: pageVertical,
  );
  static const EdgeInsets onboardingShellPadding = EdgeInsets.only(
    top: m,
    right: xxxl,
    left: xxxl,
    bottom: 64,
  );

  static const EdgeInsets carouselItemChipPadding = EdgeInsets.symmetric(
    horizontal: 12,
    vertical: 6,
  );  static const EdgeInsets groupDetailAppBar = EdgeInsets.symmetric(
    horizontal: xs,
  );
  static const EdgeInsets managePagesPadding = EdgeInsets.symmetric(
    horizontal: lgg,
    vertical: lg,
  );
  static const EdgeInsets topicChipArticlePadding = EdgeInsets.symmetric(
    horizontal: m,
    vertical: xs,
  );
  static const EdgeInsets   messageCardPadding = EdgeInsets.symmetric(horizontal: m,vertical: s
  );  static const EdgeInsetsDirectional   messageBubblePadding =   EdgeInsetsDirectional.fromSTEB(
    AppSpacing.m,
    AppSpacing.m,
    AppSpacing.m,
    AppSpacing.s,
  );
  static const EdgeInsets messageCardMargin = EdgeInsets.all(lg);
  static const EdgeInsets navigationButtonPadding = EdgeInsets.fromLTRB(
    m,
    m,
    m,
    ml,
  );

  static const EdgeInsets articlePagePadding = EdgeInsets.all(pageVertical);
  static const EdgeInsets groupMessagesPagePadding = EdgeInsets.only(right: m,left: m,top:ml );
  static const EdgeInsets copyButtonPadding = EdgeInsets.all(m);
  static const EdgeInsets searchPageElementsPadding = EdgeInsets.symmetric(
    horizontal: m,
  );
  static const EdgeInsets searchPagePadding = EdgeInsets.only(top: lg);
  static const EdgeInsets summaryPagePadding = EdgeInsets.all(ml);
  static const EdgeInsets mainDrawerPadding = EdgeInsets.only(
    top: m,
    right: sm,
  );

  static const EdgeInsets sectionPadding = EdgeInsets.symmetric(horizontal: sm);
  static const EdgeInsets summaryItemPadding = EdgeInsets.only(bottom: m);
  static const EdgeInsets summaryListPadding = EdgeInsets.symmetric(
    vertical: sm,
  );

  static const EdgeInsets cardPadding = EdgeInsets.symmetric(
    horizontal: ml,
    vertical: mlg,
  );
  static const EdgeInsets carouselSectionPadding = EdgeInsets.only(
    top: ml,
    // bottom: ml,
  );
  static const EdgeInsets dismissibleNoticePadding = EdgeInsets.fromLTRB(
    ml,
    ml,
    sm,
    ml,
  );
  static const parentListTilePadding = EdgeInsets.symmetric(horizontal: m);
  static const EdgeInsets chipPadding = EdgeInsets.symmetric(horizontal: m);
  static const EdgeInsets bottomSelectSheetPadding = EdgeInsets.all(m);
  static const EdgeInsets unreadSeparatorChipPadding = EdgeInsets.all(m);
  static const EdgeInsets topicChipPadding = EdgeInsets.symmetric(
    horizontal: ml,
    vertical: sm,
  );
  static const EdgeInsets childChipPadding = EdgeInsets.symmetric(
    horizontal: sm,
    vertical: xs + 2,
  );

  static const EdgeInsets buttonPadding = EdgeInsets.all(sm);
  static const EdgeInsets groupTilePadding =  EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets groupsPagePadding =  EdgeInsets.symmetric(vertical: 24, horizontal: 12);
  static const EdgeInsets groupTileMargin =  EdgeInsets.only(bottom: 8);
  static const EdgeInsets bottomPadding = EdgeInsets.only(bottom: sm);
  static const EdgeInsets carouselItemPadding = EdgeInsets.all(sm);
  static const EdgeInsets fabPadding = EdgeInsets.all(m);
  static const EdgeInsets notificationsSelectListPadding = EdgeInsets.symmetric(
    vertical: s,
  );
}

class AppHeights {
  AppHeights._();

  static const double childChip = 28;
  static const double customToggle = 20;
  static const double notificationsSelectChild = 52;
  static const double notificationsSelectChildOnboarding = 44;

  static const double carouselSection = 128;
  static const double topicsFilters = 66;
  static const double appBar = 64;
  static const double onboardingAppBar = 88;

  static const double button = 40;
  static const double largeButton = 56;
  static const double toolsLine = 54;
  static const double shareButton = 48;
  static const double bottomNavBar = 64;
  static const double textField = 48;
  static const double fabButton = 48;
  static const double iconRefButton = 48;

  static const double cardItem = 86;
  static const double iconX = 28;
}

class AppWidths {
  AppWidths._();

  static const double childChip = 76;
  static const double customToggle = 48;

  static const double shareButton = 48;
  static const double appBar = 64;
  static const double iconX = 28;
  static const double onboardingAppBar = 88;

  static const double button = 284;
  static const double largeButton = 56;

  static const double bottomNavBar = 64;
  static const double textField = 48;
  static const double fabButton = 48;
  static const double iconRefButton = 48;
}

class AppBreakpoints {
  AppBreakpoints._();

  static const double mobileMax = 600;
  static const double tabletMax = 1024;

  static bool isMobile(double width) => width < mobileMax;

  static bool isTablet(double width) => width >= mobileMax && width < tabletMax;

  static bool isDesktop(double width) => width >= tabletMax;
}

extension AppBreakpointContextExt on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;

  bool get isMobile => AppBreakpoints.isMobile(screenWidth);

  bool get isTablet => AppBreakpoints.isTablet(screenWidth);

  bool get isDesktop => AppBreakpoints.isDesktop(screenWidth);
}
