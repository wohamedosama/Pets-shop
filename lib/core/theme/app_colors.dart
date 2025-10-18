import 'package:flutter/material.dart';

/// App color palette for Pet Adoption Application
/// Contains all colors used throughout the pet adoption app
class AppColors {
  // Private constructor to prevent instantiation
  AppColors._();

  // Primary Colors - Turquoise/Teal Theme
  static const Color primaryTurquoise = Color(0xFF1DBFAF);
  static const Color primaryLightTurquoise = Color(0xFF4DD0C1);
  static const Color primaryDarkTurquoise = Color(0xFF0B9184);

  // Background Colors
  static const Color lightBackground = Color(0xFFFFFFFF);
  static const Color lightSurfaceBackground = Color(0xFFF5F8FB);
  static const Color lightPetCardBackground = Color(0xFFE0F7F4);

  // Text Colors
  static const Color darkText = Color(0xFF1B262C);
  static const Color mediumText = Color(0xFF555555);
  static const Color lightText = Color(0xFF999999);

  // Card & Surface Colors
  static const Color cardBackground = Color(0xFFFFFFFF);
  static const Color surfaceGray = Color(0xFFF5F6FA);
  static const Color borderGray = Color(0xFFE8E8E8);

  // Status Colors
  static const Color successGreen = Color(0xFF34C358);
  static const Color errorRed = Color(0xFFFF3B30);
  static const Color warningOrange = Color(0xFFFF9500);
}
