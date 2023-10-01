import 'package:ecommerce_store/core/constant/package_const.dart';

class OtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OtpControllerImp());
  }
}
