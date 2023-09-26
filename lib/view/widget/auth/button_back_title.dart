import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/image_const.dart';

class ButtonBack extends StatelessWidget {
  const ButtonBack({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SvgPicture.asset(
                  ImageConst.fromFieldImageButtonBack,
                  width: 25.w,
                  height: 25.h,
                  fit: BoxFit.scaleDown,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(title, style: context.textTheme.titleLarge),
              Text(
                subTitle,
                style: context.textTheme.bodySmall,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
      ],
    );
  }
}
