import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';
import '../typography/app_text_styles.dart';

/// Tema ISO 26 Glass - Glassmorphism oscuro
class AppTheme {
  AppTheme._();

  static ThemeData get glassTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,

      // Esquema de colores
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        primaryContainer: AppColors.primaryDark,
        secondary: AppColors.accent,
        secondaryContainer: AppColors.accentDark,
        surface: AppColors.backgroundDark,
        onPrimary: AppColors.textPrimary,
        onSecondary: AppColors.textPrimary,
        onSurface: AppColors.textPrimary,
        error: AppColors.error,
      ),

      // Tipografía con Google Fonts
      textTheme: TextTheme(
        displayLarge: AppTextStyles.displayLarge.copyWith(
          color: AppColors.textPrimary,
        ),
        displayMedium: AppTextStyles.displayMedium.copyWith(
          color: AppColors.textPrimary,
        ),
        displaySmall: AppTextStyles.displaySmall.copyWith(
          color: AppColors.textPrimary,
        ),
        headlineLarge: AppTextStyles.headlineLarge.copyWith(
          color: AppColors.textPrimary,
        ),
        headlineMedium: AppTextStyles.headlineMedium.copyWith(
          color: AppColors.textPrimary,
        ),
        headlineSmall: AppTextStyles.headlineSmall.copyWith(
          color: AppColors.textPrimary,
        ),
        titleLarge: AppTextStyles.titleLarge.copyWith(
          color: AppColors.textPrimary,
        ),
        titleMedium: AppTextStyles.titleMedium.copyWith(
          color: AppColors.textSecondary,
        ),
        titleSmall: AppTextStyles.titleSmall.copyWith(
          color: AppColors.textSecondary,
        ),
        bodyLarge: AppTextStyles.bodyLarge.copyWith(
          color: AppColors.textSecondary,
        ),
        bodyMedium: AppTextStyles.bodyMedium.copyWith(
          color: AppColors.textSecondary,
        ),
        bodySmall: AppTextStyles.bodySmall.copyWith(
          color: AppColors.textTertiary,
        ),
        labelLarge: AppTextStyles.labelLarge.copyWith(
          color: AppColors.textSecondary,
        ),
        labelMedium: AppTextStyles.labelMedium.copyWith(
          color: AppColors.textSecondary,
        ),
        labelSmall: AppTextStyles.labelSmall.copyWith(
          color: AppColors.textTertiary,
        ),
      ),

      fontFamily: GoogleFonts.inter().fontFamily,

      // Scaffold con gradiente oscuro
      scaffoldBackgroundColor: AppColors.backgroundDark,

      // AppBar con efecto glass
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.glassBackground,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: AppTextStyles.titleLarge.copyWith(
          color: AppColors.textPrimary,
        ),
      ),

      // Cards con glassmorphism
      cardTheme: CardThemeData(
        color: AppColors.glassSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: AppColors.borderGlass, width: 1),
        ),
      ),

      // Elevated Button con glass
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.glassSurface,
          foregroundColor: AppColors.textPrimary,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: AppColors.borderGlass, width: 1),
          ),
        ),
      ),

      // Input Decoration con glass
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.glassBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.borderGlass, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.borderGlass, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        labelStyle: const TextStyle(color: AppColors.textSecondary),
        hintStyle: const TextStyle(color: AppColors.textTertiary),
      ),

      // Divider glass
      dividerTheme: const DividerThemeData(
        color: AppColors.borderGlass,
        thickness: 1,
      ),
    );
  }
}
