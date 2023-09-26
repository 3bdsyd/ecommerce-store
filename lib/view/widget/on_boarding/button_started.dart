import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controller/on_boarding_controller.dart';
import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';
import '../../../data/datasource/static/static.dart';

class ButtonStarted extends GetView<OnBoardingControllerImp> {
  const ButtonStarted({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20.w,
        ),
        Row(
          children: [
            ...List.generate(
              onBoardingList.length,
              (index) => GetBuilder<OnBoardingControllerImp>(
                init: OnBoardingControllerImp(),
                builder: (controller) {
                  return AnimatedContainer(
                    margin: EdgeInsets.only(left: 10.w),
                    width: measurementPages(index),
                    height: 4.h,
                    duration: const Duration(milliseconds: 800),
                    decoration: BoxDecoration(
                      color: activeMeasurementPages(index),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  );
                },
              ),
            )
          ],
        ),
        const Spacer(),
        SizedBox(
          height: 40.h,
          child:  ElevatedButton(
            onPressed: () {
              controller.nextOnBoardingPage();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorConst.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Get Started',
                  style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                SvgPicture.asset(
                  ImageConst.onBoardingStart,
                  width: 20.w,
                  fit: BoxFit.scaleDown,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  double measurementPages(int index) {
    if (controller.currentPage == index) {
      return 25.w;
    } else if (controller.currentPage - index == 1 ||
        index - controller.currentPage == 1) {
      return 15.w;
    } else {
      return 10.w;
    }
  }

  Color activeMeasurementPages(int index) {
    return controller.currentPage == index
        ? ColorConst.primaryColor
        : ColorConst.secondaryColor;
  }
}
