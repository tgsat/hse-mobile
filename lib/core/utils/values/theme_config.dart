import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hse_product/core/utils/values/color_config.dart';

class ThemeConfig {
  static ThemeData primaryTheme = ThemeData(
    accentColor: ColorConfig.secondaryColor,
    scaffoldBackgroundColor: ColorConfig.scaffoldColor,
    primaryColor: ColorConfig.primaryColor,
    textTheme: TextTheme(
      headline5: GoogleFonts.poppins(
        color: ColorConfig.textTitleColor,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      headline6: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: ColorConfig.textTitleColor,
      ),
      bodyText1: GoogleFonts.poppins(
        fontSize: 14,
        color: ColorConfig.textTitleColor,
      ),
      bodyText2: GoogleFonts.poppins(
        color: Colors.black54,
        fontSize: 12,
      ),
      caption: GoogleFonts.poppins(
        fontSize: 10,
      ),
    ),
  );
}
