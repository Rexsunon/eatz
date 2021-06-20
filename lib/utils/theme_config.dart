import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeConfig {
  static Color lightPrimary = Colors.white;
  static Color darkPrimary = Color(0xff1f1f1f);
  static Color lightAccent = Color(0xFF6039EF);
  static Color darkAccent = Color(0xFF6039EF);
  static Color lightBG = Colors.white;
  static Color lightTextColor = Colors.black;
  static Color darkBG = Color(0xff121212);

  static ThemeData lightTheme = ThemeData(
      backgroundColor: lightBG,
      primaryColor: lightPrimary,
      accentColor: lightAccent,
      scaffoldBackgroundColor: lightBG,
      appBarTheme: AppBarTheme(
        elevation: 0.0,
      ),
      canvasColor: lightPrimary,
      textTheme: GoogleFonts.montserratTextTheme(),
  );

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      backgroundColor: darkBG,
      primaryColor: darkPrimary,
      accentColor: darkAccent,
      scaffoldBackgroundColor: darkBG,
      appBarTheme: AppBarTheme(
        elevation: 0.0,
      ),
      textTheme: GoogleFonts.montserratTextTheme(),
  );
}