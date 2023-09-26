import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class ButtonReturnBackChat extends StatelessWidget {
  const ButtonReturnBackChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Row(
        children: [
          Container(
            height: 32.h,
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: ColorConst.secondaryColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      ImageConst.imagesReturnIcon,
                    ),
                  ],
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  'Return back',
                  style: context.textTheme.labelSmall!.copyWith(
                    color: ColorConst.whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
