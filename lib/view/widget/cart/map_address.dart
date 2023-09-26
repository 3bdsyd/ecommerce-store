import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class MapAddress extends GetView<HomeControllerImp>{
  const MapAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: ListView(
        children: [
          SizedBox(
            height: 12.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                controller.changeStateMap(false);
              },
              child: SvgPicture.asset(
                ImageConst.fromFieldImageButtonBack,
                width: 25.w,
                height: 25.h,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: TextField(
                style: context.textTheme.labelSmall,
                cursorColor: ColorConst.thirdColor,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  filled: true,
                  fillColor: ColorConst.thirdColor.withOpacity(.1),
                  contentPadding: const EdgeInsets.only(
                    left: 15,
                    bottom: 5,
                    right: 15,
                    top: 5,
                  ),
                  hintText: 'Enter Your City ...',
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
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                ImageConst.imagesMap,
                fit: BoxFit.cover,
              ),
              Image.asset(ImageConst.imagesBullet)
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(top: 5.h),
              alignment: Alignment.center,
              height: 30.h,
              width: 80.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.fromBorderSide(
                  BorderSide(color: ColorConst.primaryColor),
                ),
              ),
              child: Text(
                'Save',
                style: context.textTheme.bodySmall!.copyWith(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
