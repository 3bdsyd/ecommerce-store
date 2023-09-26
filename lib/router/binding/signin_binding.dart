import 'package:ecommerce_store/controller/signin_controller.dart';
import 'package:get/get.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInControllerImp());
  }
}
