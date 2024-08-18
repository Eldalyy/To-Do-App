import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xFF5D9CEC);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Color(0xFFDFECDB),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          size: 35,
          color: primaryColor,
        ),
        unselectedIconTheme: IconThemeData(
          size: 20,
          color: Color(0xFFC8C9CB),
        )),
    textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontFamily: "Poppins",
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        bodyLarge: TextStyle(
            fontFamily: "Poppins",
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white),
        bodyMedium: TextStyle(
            fontFamily: "Poppins",
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.white),
        bodySmall: TextStyle(
            fontFamily: "Poppins",
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white),
        displaySmall: TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.grey)),
  );
}
