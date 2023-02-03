import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,

    // Color primario
    primaryColor: primary,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      elevation: 0,
    ),

    // Text Button
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary)),

    //Floating actions Buttons
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primary),

    // Elevation button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: primary,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),

    // Inputs
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    useMaterial3: true,

    // Color primario
    primaryColor: primary,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      elevation: 0,
    ),
  );
}
