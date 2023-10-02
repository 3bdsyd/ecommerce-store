import 'package:ecommerce_store/core/constant/icon_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class ListTextMoving extends StatelessWidget {
  const ListTextMoving({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: context.textTheme.titleLarge!.copyWith(
                color: ColorConst.thirdColor,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            SvgPicture.asset(
              IconConst.imageMovingIn,
              width: 10,
            ),
            SizedBox(
              width: 10.w,
            ),
          ],
        ),
        Divider(
          color: ColorConst.thirdColor,
          height: 20.h,
        )
      ],
    );
  }
}
