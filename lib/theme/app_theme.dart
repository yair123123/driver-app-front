import 'package:driver_app/theme/app_colors.dart';
import 'package:driver_app/theme/app_typography.dart';
import 'package:driver_app/theme/button_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get light {
    final base = ThemeData(
      drawerTheme: DrawerThemeData(
        backgroundColor: AppColors.black,
      ),

      iconTheme: const IconThemeData(color: Colors.white),
      listTileTheme: const ListTileThemeData(iconColor: Colors.white),
      searchBarTheme: SearchBarThemeData(
        backgroundColor: WidgetStatePropertyAll(AppColors.white),
        shadowColor: WidgetStatePropertyAll(Colors.transparent),
        elevation: WidgetStatePropertyAll(0),
        padding: WidgetStatePropertyAll(
          const EdgeInsets.symmetric(horizontal: 10),
        ),
        hintStyle: WidgetStatePropertyAll(
          AppTypography.body3.apply(color: AppColors.disable),
        ),
        shape: WidgetStateProperty.resolveWith<OutlinedBorder?>((states) {
          if (states.contains(WidgetState.focused) ||
              states.contains(WidgetState.pressed)) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: const BorderSide(
                color: AppColors.primary,
                width: 1,
                strokeAlign: BorderSide.strokeAlignOutside,
              ),
            );
          }

          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide.none,
          );
        }),
      ),
      useMaterial3: false,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,

        primary: AppColors.primary,
        secondary: AppColors.white,
        surface: AppColors.background,
        error: AppColors.error,
        errorContainer: AppColors.errorButton
        
      ),
    );
    final textTheme = AppTypography.buildTextTheme(base.textTheme).apply(
      bodyColor: AppColors.textPrimary,
      displayColor: AppColors.textPrimary,
    );

    return base.copyWith(
      extensions: [
        ButtonTextStyles(
          selected: TextStyle(color: AppColors.white),
          unselected: TextStyle(color: AppColors.black),
        ),
      ],
      textTheme: textTheme,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: AppColors.white),
        elevation: 0,
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.textPrimary,
      ),
      listTileTheme: const ListTileThemeData(
        minVerticalPadding: 0,
        horizontalTitleGap:12,
        minLeadingWidth:0,
        dense: true,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) {
              return AppColors.primary.withOpacity(0.5);
            }
            if (states.contains(WidgetState.pressed)) {
              return AppColors.primary.withOpacity(0.85);
            }
            return AppColors.primary;
          }),
          foregroundColor: WidgetStateProperty.all(AppColors.white),
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          textStyle: WidgetStateProperty.all(AppTypography.button),
          elevation: WidgetStateProperty.all(0),
          overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
            if (states.contains(WidgetState.pressed)) {
              return AppColors.white.withAlpha((0.12*255).round());
            }
            if (states.contains(WidgetState.hovered)) {
              return AppColors.white.withAlpha((0.06*255).round());
            }
            return null;
          }),
        ),
      ),

    );
  }

  static ThemeData get onboarding {
    final base = light;

    final onboardingTextTheme = AppTypography.buildOnboardingTextTheme(
      base.textTheme,
    ).apply(bodyColor: AppColors.white, displayColor: AppColors.white);

    return base.copyWith(
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.white,
      ),
      dividerColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      listTileTheme: const ListTileThemeData(
        minVerticalPadding: 0,
        horizontalTitleGap:12,
        minLeadingWidth:0,
        dense: true,
      ),
      visualDensity: const VisualDensity(vertical: -1),
      expansionTileTheme: ExpansionTileThemeData(
        textColor: AppColors.white,
        collapsedTextColor: AppColors.white,
        iconColor: AppColors.white,
        collapsedIconColor: AppColors.white,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.black,
        toolbarHeight: 68.h,
      ),
      // dividerColor: AppColors.white,
      scaffoldBackgroundColor: AppColors.black,
      colorScheme: base.colorScheme.copyWith(
        surface: AppColors.primaryLight,
        onSurface: AppColors.white,
      ),
      textTheme: onboardingTextTheme,
    );
  }
}
