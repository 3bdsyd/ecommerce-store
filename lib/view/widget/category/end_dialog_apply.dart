import 'package:ecommerce_store/core/constant/icon_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class EndDialogApply extends StatelessWidget {
  const EndDialogApply({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorConst.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Text(
                    'Apply Filter',
                    style: context.textTheme.labelLarge!.copyWith(fontSize: 18),
                  ),
                  SvgPicture.asset(
                    IconConst.onBoardingStart,
                    width: 30.w,
                    height: 20.h,
                    fit: BoxFit.scaleDown,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 40.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConst.secondaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Reset',
                  style: context.textTheme.labelLarge!.copyWith(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
