import 'package:ecommerce_store/controller/signup_controller.dart';
import 'package:ecommerce_store/core/class/handling_data_view.dart';
import 'package:ecommerce_store/core/fuctions/fields_validators.dart';
import 'package:ecommerce_store/view/widget/auth/button_sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../core/constant/image_const.dart';
import '../widget/auth/button_back_title.dart';
import '../widget/auth/button_sign_up_facebook.dart';
import '../widget/auth/form_filed_widget.dart';

class SignUp extends GetView<SignUpControllerImp> {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: GetBuilder<SignUpControllerImp>(
            builder: (_) => HandlingDataRequest(
              statusRequest: controller.statusRequest,
              widget: ListView(
                children: [
                  SizedBox(
                    height: 12.h,
                  ),
                  const ButtonBack(
                    title: 'Getting Started',
                    subTitle: 'Create an account to continue!',
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 20.h,
                    ),
                    child: Form(
                      key: controller.globalKeySignUp,
                      child: Column(
                        children: [
                          FormFieldWidget(
                            signUp: true,
                            labelText: 'Enter your email or Phone number',
                            imagePrefix: ImageConst.fromFieldImageOne,
                            hinText: 'ranem.omarr@example.com',
                            validator: (String value) {
                              return FieldsValidators.emailValidator(value);
                            },
                            controller: controller.email,
                          ),
                          FormFieldWidget(
                            signUp: true,
                            labelText: 'Username',
                            imagePrefix: ImageConst.fromFieldImageTow,
                            hinText: 'ex: Ranim',
                            validator: (String value) {
                              return FieldsValidators.userNameValidator(value);
                            },
                            controller: controller.username,
                          ),
                          FormFieldWidget(
                            labelText: 'Password',
                            imagePrefix: ImageConst.fromFieldImageThree,
                            hinText: '• • • • • • • •',
                            imageSuffix: ImageConst.fromFieldImageFour,
                            signUp: true,
                            validator: (String value) {
                              return FieldsValidators.passwordValidator(value);
                            },
                            controller: controller.password,
                            obscureText: controller.obscureTextShow,
                          ),
                          ButtonSignUp(
                            signUp: true,
                            signUpController: controller,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const ButtonSignUpFacebook(),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
