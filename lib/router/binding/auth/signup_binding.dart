import 'package:ecommerce_store/controller/auth/signup_controller.dart';
import 'package:get/get.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignUpControllerImp());
  }
}
