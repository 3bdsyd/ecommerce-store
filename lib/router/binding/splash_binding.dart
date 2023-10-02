import 'package:ecommerce_store/controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashControllerImp());
  }
}
