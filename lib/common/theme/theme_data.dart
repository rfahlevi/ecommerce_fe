import 'package:ecommerce_fe/common/theme/colors.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData dwellingThene = ThemeData(
    appBarTheme: const AppBarTheme(
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      shadowColor: Colors.transparent,
      foregroundColor: AppColor.tropicalBlue,
      backgroundColor: AppColor.orange,
    )),
    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.midnightBlue),
  );
}
