import 'package:ecommerce_store/controller/on_boarding_controller.dart';
import 'package:ecommerce_store/core/constant/image_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../data/datasource/static/static.dart';

class LogoTitle extends GetView<OnBoardingControllerImp> {
  const LogoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final int index = controller.currentPage;
    return Column(
      children: [
        Container(
          height: 90.h,
          width: 90.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: ColorConst.thirdColor.withOpacity(.1),
                blurRadius: 20,
                spreadRadius: -20,
              ),
            ],
          ),
          child: Image.asset(
            ImageConst.myLogo,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          onBoardingList[index].titleText,
          style: context.textTheme.titleSmall,
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
