import 'package:flutter/material.dart';

abstract class CustomAppTheme {
  static ThemeData dark = ThemeData(
    textSelectionColor: const Color(0xff333333),
    textSelectionHandleColor: const Color(0xff247DBA),
    cursorColor: const Color(0xff247DBA),
    indicatorColor: const Color(0xff247DBA),
    brightness: Brightness.dark,
    primaryColor: const Color(0xff247DBA),
    accentColor: const Color(0xffEBEBEB),
    scaffoldBackgroundColor: const Color(0xff333333),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: Color(0xff4B4B4B),
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff247DBA),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffBA4D24),
        ),
      ),
      enabledBorder: InputBorder.none,
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffEBEBEB),
        ),
      ),
    ),
    dividerColor: const Color(0xff666666),
    fontFamily: "Poppins",
    cardColor: const Color(0xff4B4B4B),
    textTheme: const TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 29,
        fontWeight: FontWeight.bold,
      ),
      button: TextStyle(
        color: Color(0xffEBEBEB),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodyText1: TextStyle(
        color: Color(0xffEBEBEB),
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        color: Color(0xffEBEBEB),
        fontSize: 21,
        fontWeight: FontWeight.bold,
      ),
      overline: TextStyle(
        color: Color(0xff247DBA),
        fontSize: 12,
      ),
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: Color(0xff333333),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: 20,
      ),
      contentTextStyle: TextStyle(
        fontWeight: FontWeight.normal,
        color: Colors.white,
        fontSize: 14,
      ),
    ),
  );
  static ThemeData light = ThemeData(
    textSelectionColor: const Color(0xffEBEBEB),
    textSelectionHandleColor: const Color(0xff247DBA),
    cursorColor: const Color(0xff247DBA),
    indicatorColor: const Color(0xff247DBA),
    brightness: Brightness.light,
    primaryColor: const Color(0xff247DBA),
    accentColor: const Color(0xff707070),
    scaffoldBackgroundColor: const Color(0xffEBEBEB),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: Color(0xffF1F1F1),
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xff247DBA), width: 1),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffBA4D24), width: 1),
      ),
      enabledBorder: InputBorder.none,
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xff707070), width: 1),
      ),
    ),
    dividerColor: const Color(0xff707070),
    fontFamily: "Poppins",
    cardColor: const Color(0xffF1F1F1),
    textTheme: const TextTheme(
      title: TextStyle(
        color: Color(0xff707070),
        fontSize: 29,
        fontWeight: FontWeight.bold,
      ),
      button: TextStyle(
        color: Color(0xffFFFFFF),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      body1: TextStyle(
        color: Color(0xff707070),
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      display2: TextStyle(
        color: Color(0xff707070),
        fontSize: 21,
        fontWeight: FontWeight.bold,
      ),
      overline: TextStyle(
        color: Color(0xff247DBA),
        fontSize: 12,
      ),
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: Color(0xff333333),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: 20,
      ),
      contentTextStyle: TextStyle(
        fontWeight: FontWeight.normal,
        color: Colors.white,
        fontSize: 14,
      ),
    ),
  );
}
