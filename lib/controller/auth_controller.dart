
import 'package:ecommerce_store/core/constant/package_const.dart';

abstract class AuthController extends GetxController {
  showNote();
}

class AuthControllerImp extends AuthController {
  bool show = true;
  GlobalKey<FormState> formLogin = GlobalKey();
  final TextEditingController loginController = TextEditingController();
  @override
  void showNote() {
    show = false;
    update();
  }

  

}
