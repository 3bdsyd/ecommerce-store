import 'package:flutter/material.dart';

import '../constant/color_const.dart';

class ThemeApp {
  static final themeData = ThemeData(
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 25,
        fontFamily: 'SF Pro Text',
        color: ColorConst.darkColor,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: TextStyle(
        color: ColorConst.darkColor,
        fontFamily: 'SF Pro Display',
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        color: ColorConst.darkColor,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w700,
        fontSize: 30,
      ),
      bodyMedium: TextStyle(
        color: ColorConst.darkColor,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w700,
        fontSize: 15,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontFamily: 'SF Pro Text',
        color: ColorConst.darkColor,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        color: ColorConst.darkColor,
        fontFamily: 'SF Pro Text',
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontFamily: 'SF Pro Text',
        color: ColorConst.darkColor,
        fontWeight: FontWeight.w400,
        letterSpacing: .1,
      ),
      labelSmall: TextStyle(
        fontSize: 14,
        fontFamily: 'Poppins',
        color: ColorConst.darkColor,
        fontWeight: FontWeight.w400,
        letterSpacing: .1,
      ),
    ),
  );
}
