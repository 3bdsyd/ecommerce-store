import 'package:ecommerce_store/core/constant/icon_const.dart';
import 'package:ecommerce_store/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class ButtonContinue extends StatelessWidget {
  const ButtonContinue({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed(ScreenNames.otpAuth);
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
              'Continue',
              style: context.textTheme.labelLarge,
            ),
            SvgPicture.asset(
              IconConst.fromFieldImageLogIn,
              width: 28.w,
              fit: BoxFit.scaleDown,
            ),
          ],
        ),
      ),
    );
  }
}
