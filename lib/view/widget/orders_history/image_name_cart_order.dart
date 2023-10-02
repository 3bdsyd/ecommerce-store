import 'package:ecommerce_store/core/constant/icon_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/class/platform.dart';
import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class ImageNameCartOrder extends StatelessWidget {
  const ImageNameCartOrder({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeWidth = Platform.getSizeWidth(context);
    return Expanded(
      flex: 3,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  IconConst.imagesHoppingBag,
                  height: 30,
                  width: 20,
                  fit: BoxFit.scaleDown,
                ),
                Column(
                  children: [
                    Text(
                      'Bags',
                      overflow: TextOverflow.ellipsis,
                      style:
                          context.textTheme.titleLarge!.copyWith(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Antelope',
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodySmall!.copyWith(
                        color: ColorConst.thirdColor,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '( Item 1 )',
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodySmall!
                          .copyWith(color: ColorConst.thirdColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 2.w,
          ),
          sizeWidth < 300
              ? const Text('')
              : ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    ImageConst.imageCategorySix,
                    height: double.infinity,
                    width: 100,
                    fit: BoxFit.fitHeight,
                    // fit: BoxFit.fill,
                  ),
                ),
        ],
      ),
    );
  }
}
