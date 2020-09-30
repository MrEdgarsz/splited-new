import 'package:flutter/material.dart';
import 'package:native_color/native_color.dart';

abstract class CustomAppTheme {
  static ThemeData dark = ThemeData(
    textSelectionColor: HexColor("#333333"),
    textSelectionHandleColor: HexColor("#247DBA"),
    cursorColor: HexColor("#247DBA"),
    indicatorColor: HexColor("#247DBA"),
    brightness: Brightness.dark,
    primaryColor: HexColor("#247DBA"),
    accentColor: HexColor("#EBEBEB"),
    scaffoldBackgroundColor: HexColor("#333333"),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: HexColor("#4B4B4B"),
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: HexColor("#247DBA"), width: 1),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: HexColor("#BA4D24"), width: 1),
      ),
      enabledBorder: InputBorder.none,
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: HexColor("#EBEBEB"), width: 1),
      ),
    ),
    dividerColor: HexColor("#666666"),
    fontFamily: "Poppins",
    cardColor: HexColor("#4B4B4B"),
    textTheme: TextTheme(
      headline6: const TextStyle(
        color: Colors.white,
        fontSize: 29,
        fontWeight: FontWeight.bold,
      ),
      button: TextStyle(
        color: HexColor("#EBEBEB"),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodyText1: TextStyle(
        color: HexColor("#EBEBEB"),
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        color: HexColor("#EBEBEB"),
        fontSize: 21,
        fontWeight: FontWeight.bold,
      ),
      overline: TextStyle(
        color: HexColor("#247DBA"),
        fontSize: 12,
      ),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: HexColor("#333333"),
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: 20,
      ),
      contentTextStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        color: Colors.white,
        fontSize: 14,
      ),
    ),
  );
  static ThemeData light = ThemeData(
    textSelectionColor: HexColor("#EBEBEB"),
    textSelectionHandleColor: HexColor("#247DBA"),
    cursorColor: HexColor("#247DBA"),
    indicatorColor: HexColor("#247DBA"),
    brightness: Brightness.light,
    primaryColor: HexColor("#247DBA"),
    accentColor: HexColor("#707070"),
    scaffoldBackgroundColor: HexColor("#EBEBEB"),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: HexColor("#F1F1F1"),
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: HexColor("#247DBA"), width: 1),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: HexColor("#BA4D24"), width: 1),
      ),
      enabledBorder: InputBorder.none,
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: HexColor("#707070"), width: 1),
      ),
    ),
    dividerColor: HexColor("#707070"),
    fontFamily: "Poppins",
    cardColor: HexColor("#F1F1F1"),
    textTheme: TextTheme(
      title: TextStyle(
        color: HexColor("#707070"),
        fontSize: 29,
        fontWeight: FontWeight.bold,
      ),
      button: TextStyle(
        color: HexColor("#FFFFFF"),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      body1: TextStyle(
        color: HexColor("#707070"),
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      display2: TextStyle(
        color: HexColor("#707070"),
        fontSize: 21,
        fontWeight: FontWeight.bold,
      ),
      overline: TextStyle(
        color: HexColor("#247DBA"),
        fontSize: 12,
      ),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: HexColor("#333333"),
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: 20,
      ),
      contentTextStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        color: Colors.white,
        fontSize: 14,
      ),
    ),
  );
}
