import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class ButtonOrderDetails extends StatelessWidget {
  const ButtonOrderDetails({super.key, required this.detailsButton});
  final bool detailsButton;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 40.h,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          // Get.offAll(
          //   () => const Home(),
          //   // transition: Transition.fadeIn,
          //   // duration: Duration(milliseconds: 500),
          //   binding: HomeBinding(),
          // );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: detailsButton? ColorConst.primaryColor:ColorConst.thirdColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Text(
              detailsButton?'See Order details':'Continue Shopping',
              style: context.textTheme.labelLarge,
            ),
            detailsButton?SvgPicture.asset(
              ImageConst.fromFieldImageLogIn,
              width: 28.w,
              fit: BoxFit.scaleDown,
            ):Container(width: 0,),
          ],
        ),
      ),
    );
  }
}