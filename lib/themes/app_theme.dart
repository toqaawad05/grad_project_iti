import 'package:flutter/material.dart';

class AppColors {
  static const Color platinum = Color(0xFFE5E4E1);
  static const Color ashGray = Color(0xFF90A7A3);
  static const Color isabelline = Color(0xFFEDEAE8);
  static const Color bone = Color(0xFFDFD8CC);
  static const Color desertSand = Color(0xFFDFB194);
  static const Color timberwolf = Color(0xFFE6E1DA);
  static const Color isabellineLight = Color(0xFFF0EFEB);
  static const Color battleshipGray = Color(0xFF7D807B);
  static const Color dun = Color(0xFFCDBCA4);

  static var accent;
}

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.platinum,
    primaryColor: AppColors.ashGray,
    colorScheme: ColorScheme.light(
      primary: AppColors.ashGray,
      secondary: AppColors.desertSand,
      background: AppColors.platinum,
      surface: AppColors.bone,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.ashGray,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.desertSand,
        foregroundColor: Colors.white,
        textStyle: TextStyle(fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.battleshipGray),
      bodyMedium: TextStyle(color: AppColors.battleshipGray),
      titleLarge: TextStyle(color: AppColors.dun, fontWeight: FontWeight.bold),
    ),
    cardColor: AppColors.bone,
    iconTheme: IconThemeData(color: AppColors.battleshipGray),
  );

  static var primaryColor;

  static var platinum;

  static var desertSand;
}
