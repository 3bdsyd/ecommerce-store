import 'package:ecommerce_store/core/constants/app_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_color.dart';

class ButtonCheckCart extends StatelessWidget {
  const ButtonCheckCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 35.h,
        width: 150.w,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Check Out',
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.labelLarge!.copyWith(fontSize: 18),
              ),
              SizedBox(
                width: 10.w,
              ),
              SvgPicture.asset(
                AppIcon.onBoardingStart,
                fit: BoxFit.scaleDown,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
