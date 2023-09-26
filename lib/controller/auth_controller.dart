import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class AuthController extends GetxController {
  showNote();
}

class AuthControllerImp extends AuthController {
  bool show = true;
  GlobalKey<FormState> formLogin = GlobalKey();
  final TextEditingController loginController= TextEditingController();
  @override
  void showNote() {
    show = false;
    update();
  }

}
