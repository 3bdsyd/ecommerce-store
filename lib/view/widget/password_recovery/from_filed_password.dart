import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class FromFiledPassword extends StatelessWidget {
  const FromFiledPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Phone Number',
          style: context.textTheme.labelMedium!.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 10,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        TextFormField(
          cursorWidth: 1,
          cursorColor: ColorConst.thirdColor,
          style: context.textTheme.labelLarge!.copyWith(
            color: ColorConst.thirdColor,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
                top: 10.h, bottom: 10.h, left: 15.h, right: 15.h,),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                width: .5.w,
                color: ColorConst.thirdColor,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: .5.w,
                color: ColorConst.thirdColor,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: .5.w,
                color: ColorConst.thirdColor,
              ),
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(
                  right: 20.h, left: 15.h, bottom: 10.h, top: 10.h),
              child: Text(
                '+963',
                style: context.textTheme.labelMedium!.copyWith(fontSize: 16),
              ),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(
                ImageConst.fromFieldImagePasswordRecovery,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
