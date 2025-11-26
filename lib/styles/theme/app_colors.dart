import 'package:flutter/material.dart';

/// Paleta de colores ISO 26 Glass Theme
class AppColors {
  AppColors._();

  // Colores base glassmorphism
  static const Color glassBackground = Color(0x1AFFFFFF);
  static const Color glassSurface = Color(0x26FFFFFF);
  static const Color glassElevated = Color(0x33FFFFFF);

  // Colores primarios - Tonos fríos
  static const Color primary = Color(0xFF4A90E2);
  static const Color primaryLight = Color(0xFF6BA3E8);
  static const Color primaryDark = Color(0xFF2E5B8C);

  // Colores de acento
  static const Color accent = Color(0xFF00D4FF);
  static const Color accentLight = Color(0xFF33DDFF);
  static const Color accentDark = Color(0xFF00A8CC);

  // Colores de fondo
  static const Color backgroundDark = Color(0xFF0A0E27);
  static const Color backgroundGradientStart = Color(0xFF1A1F3A);
  static const Color backgroundGradientEnd = Color(0xFF0A0E27);

  // Colores de texto
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xB3FFFFFF);
  static const Color textTertiary = Color(0x80FFFFFF);

  // Colores funcionales
  static const Color success = Color(0xFF4ADE80);
  static const Color warning = Color(0xFFFBBF24);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF3B82F6);

  // Colores de borde glass
  static const Color borderGlass = Color(0x33FFFFFF);
  static const Color borderGlassLight = Color(0x4DFFFFFF);

  // Sombras y overlays
  static const Color shadowDark = Color(0x40000000);
  static const Color overlay = Color(0x80000000);
}
