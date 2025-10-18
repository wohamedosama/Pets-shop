import 'package:flutter/material.dart';
import 'package:pets_shop/core/theme/app_colors.dart';
import 'package:pets_shop/core/theme/app_fonts.dart';
import 'package:pets_shop/core/theme/app_icons.dart';
import 'package:pets_shop/core/widgets/custom_elevated_button.dart';

class CustomOnboardingContent extends StatelessWidget {
  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback? onButtonPressed;
  final IconData? buttonIcon;
  final Color? buttonBackgroundColor;
  final Color? buttonTextColor;
  final Color? buttonIconColor;
  final double? buttonIconSize;

  final EdgeInsetsGeometry? buttonPadding;
  final double? titleSubtitleSpacing;
  final double? subtitleButtonSpacing;
  final double? bottomSpacing;

  const CustomOnboardingContent({
    super.key,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    this.onButtonPressed,
    this.buttonIcon,
    this.buttonBackgroundColor,
    this.buttonTextColor,
    this.buttonIconColor,
    this.buttonIconSize,

    this.buttonPadding,

    this.titleSubtitleSpacing,
    this.subtitleButtonSpacing,
    this.bottomSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: AppFonts.styleBold30P, textAlign: TextAlign.center),
        SizedBox(height: titleSubtitleSpacing ?? 12),
        Text(
          subtitle,
          style: AppFonts.styleRegular15P.copyWith(color: AppColors.lightText),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: subtitleButtonSpacing ?? 60),
        CustomElevatedButton(
          text: buttonText,
          onPressed: onButtonPressed,
          icon: buttonIcon ?? UiIcons.outlinePetsIcon,
          backgroundColor: buttonBackgroundColor,
          textColor: buttonTextColor,
          iconColor: buttonIconColor,
          iconSize: buttonIconSize,

          padding: buttonPadding,
        ),
        SizedBox(height: bottomSpacing ?? 40),
      ],
    );
  }
}
