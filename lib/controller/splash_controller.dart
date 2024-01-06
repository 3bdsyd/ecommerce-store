import 'package:ecommerce_store/core/constants/app_package.dart';

abstract class SplashController extends GetxController {
  // Go to the start screen of the application
  void startedScreen();
}

class SplashControllerImp extends SplashController {
  @override
  void startedScreen() {
    Timer(
      const Duration(seconds: 2),
      () => Get.offNamed(AppNameScreen.onBoardingScreen),
    );
    update();
  }

//----------------------------------------------------------------

  @override
  void onInit() {
    startedScreen();
    super.onInit();
  }
}
