import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../router/routes.dart';
import '../services/my_services.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.getBox.read('rankPage') == '1') {
      return const RouteSettings(name: ScreenNames.signUpScreen);
    }
    return null;
  }
}
