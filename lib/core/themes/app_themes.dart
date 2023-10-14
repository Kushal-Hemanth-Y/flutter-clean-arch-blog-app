import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/my_colors.dart';

class AppThemes {
  AppThemes._();
  static final light = ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColor));
  static final dark = ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      colorScheme: ColorScheme.fromSeed(seedColor: MyColors.secondaryColor));
}
