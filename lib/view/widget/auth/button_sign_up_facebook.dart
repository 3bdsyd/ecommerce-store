import 'package:ecommerce_store/core/constant/image_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';

class ButtonSignUpFacebook extends StatelessWidget {
  const ButtonSignUpFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 40.h,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorConst.blueColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    ImageConst.fromFieldImageFacebook,
                    width: 28.w,
                    fit: BoxFit.scaleDown,
                  ),
                  Text(
                    'Connect with Facebook',
                    style: context.textTheme.labelLarge,
                  ),
                  Container(),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 80.h),
          child: Container(
            height: 5.h,
            decoration: BoxDecoration(
              color: ColorConst.thirdColor.withOpacity(.1),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
