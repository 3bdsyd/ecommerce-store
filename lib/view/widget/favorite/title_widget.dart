import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.favoriteScreen,
  });
  final bool favoriteScreen;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: SvgPicture.asset(
              ImageConst.fromFieldImageButtonBack,
              height: 25.h,
              width: 25.w,
            ),
          ),
          Text(
            favoriteScreen ? 'My Favorite' : 'My Cart',
            style: context.textTheme.bodyMedium!.copyWith(
              color: ColorConst.sixthColor,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w600,
            ),
          ),
          SvgPicture.asset(
            favoriteScreen
                ? ImageConst.imageVectorLove
                : ImageConst.imageVectorCart,
            height: 20.h,
            width: 20.w,
          )
        ],
      ),
    );
  }
}
