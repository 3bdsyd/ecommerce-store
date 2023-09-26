import 'package:ecommerce_store/core/class/status_request.dart';
import 'package:ecommerce_store/core/fuctions/handling_data_controller.dart';
import 'package:ecommerce_store/core/services/my_services.dart';
import 'package:ecommerce_store/data/datasource/reomte/signup_remote.dart';
import 'package:ecommerce_store/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  void getData();
  void changeObscureText();
  void changeApprovalStatusStandards();
  void returnToPage();
}

class SignUpControllerImp extends SignUpController {
// ----------------------------  onInit the sign up controller   -----------------------------------
  @override
  void onInit() {
    email = TextEditingController();
    username = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

// ----------------------------  dispose the sign up controller   -----------------------------------
  @override
  void dispose() {
    email.dispose();
    username.dispose();
    password.dispose();
    super.dispose();
  }

  SignUpRemote signUpRemoteController = SignUpRemote(Get.find());
  final MyServices myServicesController = Get.find();
//----------------------------------------------------------------
  final GlobalKey<FormState> globalKeySignUp = GlobalKey<FormState>();
//----------------------------------------------------------------
  late TextEditingController email;
  late TextEditingController username;
  late TextEditingController password;
//----------------------------------------------------------------
  bool obscureTextShow = true;
  bool approvalOfStandards = true;
//----------------------------------------------------------------

  Map<String, dynamic> data = {};

  late StatusRequest statusRequest = StatusRequest.none;

//----------------------------------------------------------------
  @override
  void getData() async {
    if (globalKeySignUp.currentState!.validate()) {
      if (approvalOfStandards) {
        statusRequest = StatusRequest.loading;
        update();
        var response = await signUpRemoteController.getData(
          email.text,
          username.text,
          password.text,
        );
        // print("is resp in controller: ----> $response ");
        statusRequest = handlingData(response);
        if (StatusRequest.success == statusRequest) {
          if (response['code'] == 0) {
            data.addAll(response['data']);
            Get.offNamed(ScreenNames.signInScreen);
            // print(data['Token']);
            myServicesController.getBox.write('Token', data['Token']);
            // print(myServicesController.getBox.read('Token'));
          } else {
            Get.snackbar('Error', response['message']);
            statusRequest = StatusRequest.failure;
            // print('error in server');
          }
        }
        update();
      } else {
        Get.snackbar('Note', 'You must agree to the terms');
      }
    }
  }
//----------------------------------------------------------------

  @override
  void changeObscureText() {
    obscureTextShow = !obscureTextShow;
    // print(obscureTextShow.value);
    update();
  }
//----------------------------------------------------------------

  @override
  void changeApprovalStatusStandards() {
    approvalOfStandards = !approvalOfStandards;
    update();
  }
//----------------------------------------------------------------

  @override
  void returnToPage() {
    statusRequest = StatusRequest.none;
    update();
  }
}