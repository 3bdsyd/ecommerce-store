import 'package:ecommerce_store/core/constants/app_package.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.getBox.read('rankPage') == '1') {
      return const RouteSettings(name: AppNameScreen.signInScreen);
    }
    return null;
  }
}
