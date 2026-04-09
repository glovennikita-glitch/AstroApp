import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBrandTheme {
  /// Кольори: `0xRRGGBB` + повна непрозорість (`0xFF000000 | …`).
  static const Color ink = Color(0xFF000000 | 0xE2E8F0);
  static const Color canvas = Color(0xFF000000 | 0x050816);
  static const Color card = Color(0xFF000000 | 0xFFFFFF);
  static const Color accent = Color(0xFF000000 | 0x00E5FF);
  static const Color accentSoft = Color(0xFF000000 | 0x11233E);
  static const Color highlight = Color(0xFF000000 | 0xFF4D9B);

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: canvas,
    colorScheme: ColorScheme.fromSeed(
      seedColor: accent,
      brightness: Brightness.dark,
      primary: accent,
      secondary: highlight,
      surface: const Color(0xFF000000 | 0x0F172A),
    ),
    textTheme: GoogleFonts.manropeTextTheme().copyWith(
      headlineLarge: GoogleFonts.manrope(
        fontSize: 40,
        fontWeight: FontWeight.w700,
        color: ink,
      ),
      headlineMedium: GoogleFonts.manrope(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: ink,
      ),
      titleLarge: GoogleFonts.manrope(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: ink,
      ),
      titleMedium: GoogleFonts.manrope(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: ink,
      ),
      bodyLarge: GoogleFonts.manrope(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: ink,
      ),
      bodyMedium: GoogleFonts.manrope(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: ink.withValues(alpha: 0.88),
      ),
    ),
  );
}
