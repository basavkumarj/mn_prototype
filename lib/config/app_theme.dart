import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mn_prototype/other/constant_font.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    dividerColor: Color(0xFFE9EAF0),
    textTheme: TextTheme(
      bodyText1: GoogleFonts.prata(
          fontSize: 36.0,
          fontWeight: FontWeight.normal,
          color: const Color(0xFF0F153A)),
      bodyText2: const TextStyle(
          color: Color(0x99FFFFFF),
          fontFamily: ConstantFonts.AvernirNext,
          fontSize: 16.0),
      headline1: const TextStyle(
          fontFamily: ConstantFonts.Averta,
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold),
      headline2: const TextStyle(
          fontFamily: ConstantFonts.Averta,
          color: Colors.white,
          fontSize: 36.0,
          fontWeight: FontWeight.bold),
      headline3: const TextStyle(
          fontFamily: ConstantFonts.Averta,
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          color: Color(0xFF1D2440)),
      subtitle1: const TextStyle(
          fontFamily: ConstantFonts.Averta,
          fontSize: 14.0,
          color: Color(0x99FFFFFF)),
      subtitle2: const TextStyle(
          fontFamily: ConstantFonts.Averta,
          fontSize: 10.0,
          color: Color(0xFF8C92A5)),
    ),
  );
}
