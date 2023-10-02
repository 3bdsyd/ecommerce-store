import 'package:ecommerce_store/core/constant/package_const.dart';

class MiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.getBox.read('rankPage') == '1') {
      return const RouteSettings(name: ScreenNames.signInScreen);
    }
    return null;
  }
}
