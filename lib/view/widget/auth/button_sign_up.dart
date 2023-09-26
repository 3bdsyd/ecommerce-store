import 'package:ecommerce_store/controller/signin_controller.dart';
import 'package:ecommerce_store/controller/signup_controller.dart';
import 'package:ecommerce_store/core/constant/image_const.dart';
import 'package:ecommerce_store/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';

// ignore: must_be_immutable
class ButtonSignUp extends StatelessWidget {
  ButtonSignUp({
    super.key,
    required this.signUp,
    this.signUpController,
    this.signInController,
  });
  final bool signUp;
  late SignUpControllerImp? signUpController;
  late SignInControllerImp? signInController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Row(
        //   children: [
        //     GetBuilder<SignUpControllerImp>(
        //       builder: (_) => GestureDetector(
        //         onTap: () => controller.changeApprovalStatusStandards(),
        //         child: controller.approvalOfStandards
        //             ? SvgPicture.asset(
        //                 ImageConst.fromFieldImageCheckBox,
        //                 width: 15,
        //                 height: 18,
        //                 fit: BoxFit.cover,
        //               )
        //             : Container(
        //                 width: 17.9,
        //                 height: 17,
        //                 decoration: BoxDecoration(
        //                   border: Border.all(color: Colors.grey, width: 1.5),
        //                   borderRadius: BorderRadius.circular(3),
        //                 ),
        //               ),
        //       ),
        //     ),
        //     SizedBox(
        //       width: 20.w,
        //     ),
        //     Expanded(
        //       child: Text(
        //         signUp
        //             ? 'By creating an account, you agree to our Term & Conditions'
        //             : 'Remember me',
        //         style: context.textTheme.labelMedium,
        //       ),
        //     ),
        //     !signUp
        //         ? Align(
        //             alignment: Alignment.centerLeft,
        //             child: Text(
        //               'Forgot password?',
        //               textAlign: TextAlign.center,
        //               style: context.textTheme.labelSmall!.copyWith(
        //                 decoration: TextDecoration.underline,
        //                 fontSize: 12,
        //               ),
        //             ),
        //           )
        //         : Container(
        //             width: 0,
        //           ),
        //   ],
        // ),
        SizedBox(
          height: signUp ? 25.h : 100.h,
        ),
        SizedBox(
          height: 40.h,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              signUp
                  ? signUpController!.getData()
                  : signInController!.getData();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorConst.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Text(
                  signUp ? 'Sign Up' : 'Sign In',
                  style: context.textTheme.labelLarge,
                ),
                SvgPicture.asset(
                  ImageConst.fromFieldImageSignUp,
                  width: 28.w,
                  fit: BoxFit.scaleDown,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        signUp
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: context.textTheme.labelMedium,
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed(
                      ScreenNames.signInScreen,
                    ),
                    child: Text(
                      'Sign in',
                      style: context.textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: context.textTheme.labelMedium,
                  ),
                  GestureDetector(
                    onTap: () => Get.offNamed(ScreenNames.signUpScreen),
                    child: Text(
                      'Sign up',
                      style: context.textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
      ],
    );
  }
}
