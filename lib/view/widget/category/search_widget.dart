import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: SizedBox(
          height: 35.h,
          child: TextField(
            style: context.textTheme.labelSmall,
            cursorColor: ColorConst.thirdColor,
            decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              filled: true,
              fillColor: ColorConst.thirdColor.withOpacity(.1),
              contentPadding: EdgeInsets.only(
                top: 6.h,
                bottom: 2.w,
              ),
              hintText: 'Search products ...',
              hintStyle: context.textTheme.labelLarge!.copyWith(
                color: ColorConst.thirdColor.withOpacity(.3),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  ImageConst.imageMagnifyingglass,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  ImageConst.imageMicrophone,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
