import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Sistema de tipografía basado en Google Fonts
/// UI Layer - Define los estilos visuales de texto
class AppTextStyles {
  // Fuente principal del sistema
  static String _fontFamily = 'Inter';
  static String get primaryFont => _fontFamily;

  // Títulos
  static TextStyle get displayLarge => GoogleFonts.getFont(
    primaryFont,
    fontSize: 57,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.25,
  );

  static TextStyle get displayMedium => GoogleFonts.getFont(
    primaryFont,
    fontSize: 45,
    fontWeight: FontWeight.w400,
  );

  static TextStyle get displaySmall => GoogleFonts.getFont(
    primaryFont,
    fontSize: 36,
    fontWeight: FontWeight.w400,
  );

  // Headlines
  static TextStyle get headlineLarge => GoogleFonts.getFont(
    primaryFont,
    fontSize: 32,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get headlineMedium => GoogleFonts.getFont(
    primaryFont,
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get headlineSmall => GoogleFonts.getFont(
    primaryFont,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  // Títulos
  static TextStyle get titleLarge => GoogleFonts.getFont(
    primaryFont,
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );

  static TextStyle get titleMedium => GoogleFonts.getFont(
    primaryFont,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  );

  static TextStyle get titleSmall => GoogleFonts.getFont(
    primaryFont,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  );

  // Body
  static TextStyle get bodyLarge => GoogleFonts.getFont(
    primaryFont,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  );

  static TextStyle get bodyMedium => GoogleFonts.getFont(
    primaryFont,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  );

  static TextStyle get bodySmall => GoogleFonts.getFont(
    primaryFont,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  );

  // Labels
  static TextStyle get labelLarge => GoogleFonts.getFont(
    primaryFont,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  );

  static TextStyle get labelMedium => GoogleFonts.getFont(
    primaryFont,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );

  static TextStyle get labelSmall => GoogleFonts.getFont(
    primaryFont,
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );

  // Método para cambiar la fuente del sistema
  static void setFontFamily(String fontFamily) {
    _fontFamily = fontFamily;
  }
}
