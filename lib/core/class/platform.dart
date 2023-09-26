import 'package:flutter/material.dart';


class Platform {
  static double getSizeHeight(context) {
    return MediaQuery.of(context).size.height;
  }

  static double getSizeWidth(context) {
    return MediaQuery.of(context).size.width;
  }

  static Orientation getOrientation(context) {
    return MediaQuery.of(context).orientation;
  }
}
