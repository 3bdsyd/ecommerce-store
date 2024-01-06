import 'package:ecommerce_store/core/constants/app_package.dart';

class OtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OtpControllerImp());
  }
}
