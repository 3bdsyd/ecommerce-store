import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class ReasonsReturn extends StatelessWidget {
  const ReasonsReturn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w,
      height: 30.h,
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorConst.primaryColor.withOpacity(.1),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: ColorConst.primaryColor, width: 1),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          dropdownColor: ColorConst.secondaryColor,
          style: context.textTheme.labelMedium,
          focusColor: ColorConst.thirdColor,
          isExpanded: true,
          isDense: true,
          enableFeedback: true,
          value: '1',
          borderRadius: BorderRadius.circular(10),
          icon: SvgPicture.asset(
            ImageConst.imagesDropdown,
            height: 8,
          ),
          items: const [
            DropdownMenuItem(
              value: '1',
              child: Text(
                'Damaged due to poor packaging',
              ),
            ),
            DropdownMenuItem(
              value: '2',
              child: Text(
                'No longer needed',
              ),
            ),
            DropdownMenuItem(
              value: '3',
              child: Text(
                'Item arrived to late',
              ),
            ),
          ],
          onChanged: (Object? value) {},
        ),
      ),
    );
  }
}
