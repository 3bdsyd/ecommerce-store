import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';
import '../../../router/binding/home_binding.dart';
import '../../screen/home.dart';

class ButtonDone extends StatelessWidget {
  const ButtonDone({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Get.offAll(
            () => const Home(),
            // transition: Transition.fadeIn,
            // duration: Duration(milliseconds: 500),
            binding: HomeBinding(),
          );
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
              'Done',
              style: context.textTheme.labelLarge,
            ),
            SvgPicture.asset(
              ImageConst.fromFieldImageLogIn,
              width: 28.w,
              fit: BoxFit.scaleDown,
            ),
          ],
        ),
      ),
    );
  }
}
