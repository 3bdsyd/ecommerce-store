import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class ButtonOrderFailed extends StatelessWidget {
  const ButtonOrderFailed({super.key, required this.reviewButton});
  final bool reviewButton;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          backgroundColor:
              reviewButton ? ColorConst.primaryColor : ColorConst.thirdColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            reviewButton
                ? SvgPicture.asset(
                    ImageConst.imagesLongLeft,
                    width: 28.w,
                    fit: BoxFit.scaleDown,
                  )
                : Container(
                    width: 0,
                  ),
            Text(
              reviewButton ? 'Review Payment Method' : 'Please... I need Help',
              style: context.textTheme.labelLarge,
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
