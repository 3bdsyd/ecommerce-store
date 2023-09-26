import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.h),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 18.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(ImageConst.imageRectangleThree),
                        SvgPicture.asset(ImageConst.imageRectangleTow),
                        SvgPicture.asset(ImageConst.imageRectangleOne),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(ImageConst.imageEllipseOne),
                      SvgPicture.asset(ImageConst.imageEllipseTow),
                      Image.asset(ImageConst.imageProfile1),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Welcome, Ranim',
                      style: context.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: ColorConst.sixthColor,
                        fontSize: 18,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
