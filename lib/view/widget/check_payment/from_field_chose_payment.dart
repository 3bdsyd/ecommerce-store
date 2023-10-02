import 'package:ecommerce_store/core/constant/icon_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class FromFieldChosePayment extends StatelessWidget {
  const FromFieldChosePayment(
      {super.key, required this.hint, required this.date});
  final String hint;
  final bool date;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorWidth: 1,
      cursorColor: ColorConst.thirdColor,
      style: context.textTheme.labelSmall,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: context.textTheme.labelLarge!
            .copyWith(color: ColorConst.thirdColor, fontSize: 15),
        contentPadding: EdgeInsets.only(
          top: 10.h,
          bottom: 1.h,
          left: 0.h,
          right: 15.h,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConst.thirdColor,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConst.thirdColor,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConst.thirdColor,
          ),
        ),
        suffixIcon: date
            ? Padding(
                padding: EdgeInsets.symmetric(vertical: 6.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      hint,
                      style: context.textTheme.labelLarge!
                          .copyWith(color: ColorConst.thirdColor, fontSize: 15),
                    ),
                    SvgPicture.asset(IconConst.imagesArrowLeftS),
                  ],
                ),
              )
            : null,
      ),
    );
  }
}
