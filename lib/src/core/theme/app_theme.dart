import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:connective/src/core/constants/app_colors.dart';

/// Defines the main theme for the Connective application.
final appTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.background,
  primaryColor: AppColors.primary,
  colorScheme: const ColorScheme.dark(
    primary: AppColors.primary,
    secondary: AppColors.primary,
    surface: AppColors.surface,
    onPrimary: AppColors.onPrimary,
    onSurface: AppColors.textPrimary,
    error: AppColors.error,
  ),
  textTheme: TextTheme(
    displayLarge: GoogleFonts.lora(
      fontSize: 48,
      fontWeight: FontWeight.bold,
      color: AppColors.textPrimary,
    ),
    headlineMedium: GoogleFonts.lora(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColors.textPrimary,
    ),
    bodyLarge: GoogleFonts.inter(fontSize: 16, color: AppColors.textPrimary),
    bodyMedium: GoogleFonts.inter(fontSize: 14, color: AppColors.textSecondary),
    labelLarge: GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: AppColors.onPrimary,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.onPrimary,
      textStyle: GoogleFonts.inter(fontWeight: FontWeight.bold),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.surface,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide.none,
    ),
    labelStyle: GoogleFonts.inter(color: AppColors.textSecondary),
  ),
  cardTheme: CardThemeData(
    color: AppColors.surface,
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
  ),
);
