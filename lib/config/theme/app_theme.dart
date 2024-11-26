import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  const AppTheme();

  //Theme Colors
  static const primary = Color.fromRGBO(253, 101, 129, 1.0);
  static const secondary = Color.fromRGBO(251, 161, 161, 1.0);
  static const primaryButton = Color.fromRGBO(243, 208, 215, 1);
  static const secondaryButton = Color.fromRGBO(255, 154, 174, 1);
  static const Color selected = Color(0xFFD93668);
  static const Color enableOutlineBorder = Colors.black;
  static const Color focusOutlineBorder = Color(0xFF0DC3E8);
  static const Color errorOutlineBorder = Color.fromARGB(255, 208, 9, 9);

  static final TextStyle normalTextStyle = GoogleFonts.aBeeZee(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.none);

  static final TextStyle smallTextStyle = GoogleFonts.aBeeZee(
      color: Colors.black,
      fontSize: 13,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.none);

  static final TextStyle titleTextStyle = GoogleFonts.aBeeZee(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none);

  static final TextStyle cardTitleTextStyle = GoogleFonts.aBeeZee(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.none);

  static final TextStyle cardContentTextStyle = GoogleFonts.aBeeZee(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.none);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.lightBlue,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent.shade400),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
      ),
      buttonTheme: const ButtonThemeData(
        padding: EdgeInsets.all(15),
        splashColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: enableOutlineBorder),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: focusOutlineBorder),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errorOutlineBorder),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0)),
        ),
      ));
}
