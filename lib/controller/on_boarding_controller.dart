import 'package:ecommerce_store/core/services/my_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/datasource/static/static.dart';
import '../router/routes.dart';

abstract class OnBoardingController extends GetxController {
  nextOnBoardingPage();
  onChangeOnBoardingPag(int value);
}

class OnBoardingControllerImp extends OnBoardingController {
  final MyServices myServicesController = Get.find();

  int currentPage = 0;
  late PageController pageController;

  //----------------------------------------------------------------

  @override
  void onInit() {
    super.onInit();

    pageController = PageController();
  }

  @override
  void nextOnBoardingPage() {
    if (currentPage < onBoardingList.length - 1) {
      currentPage++;
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeIn,
      );
    } else {
      Get.offAllNamed(ScreenNames.signUpScreen);
      myServicesController.getBox.write('rankPage', '1');
    }
    update();
  }

  //----------------------------------------------------------------

  @override
  onChangeOnBoardingPag(int value) {
    currentPage = value;
    update();
  }
}
