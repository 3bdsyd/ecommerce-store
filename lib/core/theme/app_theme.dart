import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class AppTheme {
  static final themeData = ThemeData(
    useMaterial3: true,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 25,
        fontFamily: 'SF Pro Text',
        color: AppColor.darkColor,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: TextStyle(
        color: AppColor.darkColor,
        fontFamily: 'SF Pro Display',
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        color: AppColor.darkColor,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w700,
        fontSize: 30,
      ),
      bodyMedium: TextStyle(
        color: AppColor.darkColor,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w700,
        fontSize: 15,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontFamily: 'SF Pro Text',
        color: AppColor.darkColor,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        color: AppColor.darkColor,
        fontFamily: 'SF Pro Text',
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontFamily: 'SF Pro Text',
        color: AppColor.darkColor,
        fontWeight: FontWeight.w400,
        letterSpacing: .1,
      ),
      labelSmall: TextStyle(
        fontSize: 14,
        fontFamily: 'Poppins',
        color: AppColor.darkColor,
        fontWeight: FontWeight.w400,
        letterSpacing: .1,
      ),
    ),
  );
}
