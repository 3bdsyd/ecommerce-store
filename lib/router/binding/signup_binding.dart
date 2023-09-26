import 'package:ecommerce_store/controller/signup_controller.dart';
import 'package:get/get.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImp());
  }
}
