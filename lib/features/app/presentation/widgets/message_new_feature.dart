import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/core/icons/app_svg_icon.dart';
import 'package:news_app/core/icons/custom_icon.dart';
import 'package:news_app/core/media/media_utils.dart';
import 'package:news_app/core/widget/common_ui/custom_button.dart';
import 'package:news_app/features/home/presentation/riverpod/providers/home_tab_index_provider.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:news_app/theme/app_colors.dart';
import 'package:news_app/theme/app_typography.dart';

class NewFeatureDialog extends ConsumerWidget {
  const NewFeatureDialog({super.key});

  static const double _dialogRadius = 28;
  static const double _horizontalPadding = 24;
  static const double _topPadding = 34;
  static const double _bottomPadding = 24;
  static const double _previewImageHeight = 153;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_dialogRadius),
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 313),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: _horizontalPadding,
                  right: _horizontalPadding,
                  top: _topPadding,
                  bottom: _bottomPadding,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildHeader(context),
                    const SizedBox(height: 4),
                    _buildSubTitle(context),
                    const SizedBox(height: 6),
                    _buildNavBar(),
                    const SizedBox(height: 24),
                    _buildImage(),
                    const SizedBox(height: 20),
                    _buildButton(context, ref),
                  ],
                ),
              ),
            ),
            PositionedDirectional(
              top: 12,
              end: 12,
              child: _buildTopBar(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: const Icon(Icons.close, color: AppColors.black),
      splashRadius: 20,
      tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        Text(
          AppLocalizations.of(context)!.channels_section_title,
          textAlign: TextAlign.center,
          style: AppTypography.newFeatureTitle,
        ),
      ],
    );
  }

  Widget _buildSubTitle(BuildContext context) {
    return Text(
      AppLocalizations.of(context)!.channels_section_description,
      textAlign: TextAlign.start,
      style: AppTypography.newFeatureSubTitle,
    );
  }

  Widget _buildNavBar() {
    return Center(
      child: SizedBox(
        width: 270,
        height: 40,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 35,
                child: Row(
                  spacing: 31,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: AppIconsHelper.buildNavBarInactive(),
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0),
                      blurRadius: 7,
                      offset: const Offset(0, 24),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.01),
                      blurRadius: 15,
                      offset: const Offset(0, 6),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 5,
                      offset: const Offset(0, 9),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.09),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Center(
                  child: SizedBox(
                    width: 14,
                    height: 14,
                    child: AppSvgIcon(
                      icon: CustomIcon.tabGroupsActive,
                      width: 14,
                      height: 14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Image.asset(
      'assets/images/rockets.png',
      width: double.infinity,
      height: _previewImageHeight,
      fit: BoxFit.cover,
    );
  }

  Widget _buildButton(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: CustomButton(
          textColor: AppColors.primary,
          backgroundColor: AppColors.white,
          borderColor: AppColors.primary,
          onPress: () {
            Navigator.of(context).pop();
            ref.read(homeTabIndexProvider.notifier).state = homeGroupTabIndex;
          },
          text: AppLocalizations.of(context)!.go_to_groups_page,
        ),
      ),
    );
  }
}

class AppIconsHelper {
  static List<Widget> buildNavBarInactive({
    double size = 15,
    double spacing = 15,
  }) {
    const icons = [
      CustomIcon.tabAiInactive,
      CustomIcon.tabSummaryInactive,
      CustomIcon.tabGroups,
      CustomIcon.tabSearchInactive,
      CustomIcon.tabHomeInactive,
    ];

    final widgets = <Widget>[];

    for (var i = 0; i < icons.length; i++) {
      if (icons[i] == CustomIcon.tabGroups) {
        widgets.add(const SizedBox(width: 15));
        continue;
      }
      widgets.add(AppSvgIcon(icon: icons[i], width: size, height: size));
    }

    return widgets;
  }
}
