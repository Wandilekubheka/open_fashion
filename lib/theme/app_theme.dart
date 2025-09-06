import 'package:flutter/material.dart';
import "package:open_fashion/theme/color_theme.dart";
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static final ThemeData appThemeData = ThemeData(
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: ColorTheme.bodyColor,
        fontFamily: GoogleFonts.tenorSans().fontFamily,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        color: ColorTheme.bodyColor,
        fontFamily: GoogleFonts.tenorSans().fontFamily,
      ),
      bodySmall: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        color: ColorTheme.bodyColor,
        fontFamily: GoogleFonts.tenorSans().fontFamily,
      ),
      titleLarge: TextStyle(
        fontSize: 18.0,
        color: ColorTheme.titleActive,
        fontFamily: GoogleFonts.tenorSans().fontFamily,
      ),
      titleMedium: TextStyle(
        fontSize: 16.0,
        color: ColorTheme.titleActive,
        fontFamily: GoogleFonts.tenorSans().fontFamily,
      ),
      titleSmall: TextStyle(
        fontSize: 14.0,
        color: ColorTheme.titleActive,
        fontFamily: GoogleFonts.tenorSans().fontFamily,
      ),
    ),
  );
}
