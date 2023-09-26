import 'package:ecommerce_store/controller/signin_controller.dart';
import 'package:ecommerce_store/core/constant/image_const.dart';
import 'package:ecommerce_store/core/fuctions/fields_validators.dart';
import 'package:ecommerce_store/view/widget/auth/button_back_title.dart';
import 'package:ecommerce_store/view/widget/auth/button_sign_up.dart';
import 'package:ecommerce_store/view/widget/auth/form_filed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widget/auth/button_sign_up_facebook.dart';

class SignIn extends GetView<SignInControllerImp> {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: ListView(
            children: [
              SizedBox(
                height: 12.h,
              ),
              const ButtonBack(
                title: 'Let\'s Sign You In',
                subTitle: 'Welcome back, you\'ve been missed!',
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 20.h,
                ),
                child: Form(
                  key: controller.globalKeySignIn,
                  child: Column(
                    children: [
                      FormFieldWidget(
                        signUp: false,
                        controller: controller.email,
                        hinText: 'Ranimomar',
                        imagePrefix: ImageConst.fromFieldImageOne,
                        validator: (String value) {
                          return FieldsValidators.emailValidator(value);
                        },
                        labelText: 'Username or Email',
                      ),
                      FormFieldWidget(
                        signUp: false,
                        controller: controller.password,
                        hinText: '• • • • • • • •',
                        imagePrefix: ImageConst.fromFieldImageThree,
                        validator: (String value) {
                          return FieldsValidators.passwordValidator(value);
                        },
                        labelText: 'Password',
                      ),
                      ButtonSignUp(
                        signUp: false,
                        signInController: controller,
                      ),
                    ],
                  ),
                ),
              ),
              const ButtonSignUpFacebook(),
            ],
          ),
        ),
      ),
    );
  }
}
