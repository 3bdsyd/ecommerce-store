import 'package:ecommerce_store/core/constant/package_const.dart';

abstract class SplashController extends GetxController {
  // Go to the start screen of the application
  void startedScreen();
}

class SplashControllerImp extends SplashController {
  @override
  void onInit() {
    startedScreen();
    super.onInit();
  }

//----------------------------------------------------------------

  @override
  void startedScreen() {
    Timer(const Duration(seconds: 2), () {
      Get.offAllNamed(ScreenNames.onBoardingScreen);
    });
    update();
  }
}
