import 'package:ecommerce_store/core/constant/color_const.dart';
import 'package:ecommerce_store/core/constant/icon_const.dart';
import 'package:ecommerce_store/core/constant/image_const.dart';
import 'package:ecommerce_store/view/widget/auth/button_back_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DetailsInformation extends StatelessWidget {
  const DetailsInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              child: ButtonBack(title: '', subTitle: ''),
            ),
            Expanded(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset(
                        ImageConst.imageProfileBig,
                      ),
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorConst.primaryColor,
                        ),
                        child: SvgPicture.asset(
                          IconConst.imageCamera,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(
          width: 200,
          child: Column(
            children: [
              Text(
                'Ranim Omar',
                style: context.textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              Text(
                'ranem.omarr@gmail.com',
                style: context.textTheme.labelMedium!.copyWith(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
      ],
    );
  }
}
