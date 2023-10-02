import 'package:ecommerce_store/core/constant/icon_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class AppBarDetailsProduct extends GetView<HomeControllerImp> {
  const AppBarDetailsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
              controller.currentPage(0);
            },
            child: SvgPicture.asset(
              IconConst.buttonBack,
              height: 25.h,
              width: 25.w,
            ),
          ),
          Text(
            'Product Page',
            style: context.textTheme.bodyMedium!.copyWith(
              color: ColorConst.sixthColor,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w600,
            ),
          ),
          SvgPicture.asset(
            IconConst.imagesShopDetails,
            height: 20.h,
            width: 20.w,
          )
        ],
      ),
    );
  }
}
