import 'package:flutter/material.dart';
import 'package:pets_shop/core/theme/app_colors.dart';
import 'package:pets_shop/core/theme/app_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? iconColor;
  final double? iconSize;

  final EdgeInsetsGeometry? padding;

  const CustomElevatedButton({
    super.key,
    required this.text,
    this.onPressed,
    this.icon,
    this.backgroundColor,
    this.textColor,
    this.iconColor,
    this.iconSize,

    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColors.primaryLightTurquoise,
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(icon, color: iconColor ?? Colors.white, size: iconSize ?? 24),
            const SizedBox(width: 10),
          ],
          Text(
            text,
            style: AppFonts.styleMedium17P.copyWith(
              color: textColor ?? Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
