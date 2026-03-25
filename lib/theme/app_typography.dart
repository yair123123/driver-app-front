import 'package:driver_app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  AppTypography._();

  // ===== DISPLAY / LOGO =====

  static final TextStyle displayL = GoogleFonts.jost(
    fontSize: 38,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle displayM = GoogleFonts.rubik(
    fontSize: 38,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle timeStamp = GoogleFonts.rubik(
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle displayS = GoogleFonts.rubik(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 0.98,
  );
  static final TextStyle splashTitle = GoogleFonts.jost(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle noResultTitle = GoogleFonts.rubik(
    fontSize: 20,
    fontWeight: FontWeight.w300,
  );

  static final TextStyle aiPageTitle = GoogleFonts.rubik(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 1,
  );
  static final TextStyle appBusyPageTitle = GoogleFonts.rubik(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 1.25,
  );
  static final TextStyle appBusyPageSubtitle = GoogleFonts.rubik(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    height: 1.25,
  );

  static final TextStyle errorBodyTitle = GoogleFonts.rubik(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle managmentTitle = GoogleFonts.rubik(
    color: AppColors.black,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
static final TextStyle newFeatureTitle = GoogleFonts.rubik(
    color: AppColors.black,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );static final TextStyle newFeatureSubTitle = GoogleFonts.rubik(
    color: AppColors.black,
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );


  static final TextStyle appBarTitle = GoogleFonts.jost(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle snackBarTitle = GoogleFonts.rubik(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle snackBarSubtitle = GoogleFonts.rubik(
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );
  static final TextStyle summrayPageTitle = GoogleFonts.rubik(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle errorDialogTitle = GoogleFonts.jost(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle errorDialogContent = GoogleFonts.jost(
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );
  static final TextStyle drawerTitle = GoogleFonts.jost(
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle splashSubtitle = GoogleFonts.jost(
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );

  // ===== HEADLINES =====

  static final TextStyle headline1 = GoogleFonts.rubik(
    fontSize: 26,
    fontWeight: FontWeight.w500,
    height: 1.05,
  );

  static final TextStyle headline2 = GoogleFonts.rubik(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    height: 1.1,
  );

  static final TextStyle headline3 = GoogleFonts.rubik(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 1.1,
  );

  static final TextStyle body1 = GoogleFonts.rubik(
    fontSize: 18,
    fontWeight: FontWeight.w300,
    height: 1.2,
  );

  static final TextStyle body2 = GoogleFonts.rubik(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.2,
  );
  static final TextStyle body3 = GoogleFonts.rubik(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    height: 1.2,
  );

  // ===== LABELS / META =====

  static final TextStyle label = GoogleFonts.rubik(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle chipLabel = GoogleFonts.rubik(
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle labelMuted = GoogleFonts.rubik(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );
  static final TextStyle updateLine = GoogleFonts.rubik(
    color: AppColors.grey,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  // ===== ACTIONS =====

  static final TextStyle button = GoogleFonts.rubik(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle link = GoogleFonts.rubik(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.2,
  );
  static final TextStyle softLink = GoogleFonts.rubik(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    height: 1.11,
  );
  static final TextStyle titleDismissibleNotice = GoogleFonts.rubik(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle appMessengerTitle = GoogleFonts.rubik(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle appMessengerSubtitle = GoogleFonts.rubik(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );
  static final TextStyle groupNameTitle = GoogleFonts.rubik(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );  static final TextStyle groupNameSubtitle = GoogleFonts.rubik(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  // ===== BUILDERS =====

  static TextTheme buildTextTheme(TextTheme base) {
    return base.copyWith(
      titleSmall: errorBodyTitle,
      titleMedium: drawerTitle,
      titleLarge: appBarTitle,
      displayLarge: displayL,
      displayMedium: displayM,
      displaySmall: displayS,
      headlineLarge: headline1,
      headlineMedium: headline2,
      headlineSmall: headline3,
      labelSmall: chipLabel,
      bodyLarge: body1,
      bodyMedium: body2,
      bodySmall: body3,
      labelLarge: label,
      labelMedium: labelMuted,
    );
  }

  static TextTheme buildOnboardingTextTheme(TextTheme base) {
    return buildTextTheme(base);
  }
}
