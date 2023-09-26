import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constant/color_const.dart';

class NameDesPriceProduct extends GetView<HomeControllerImp> {
  const NameDesPriceProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.myDetailsProduct.nameCategory,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.titleLarge!.copyWith(fontSize: 20),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              controller.myDetailsProduct.discretionCategory,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodySmall!.copyWith(
                color: ColorConst.thirdColor,
                fontSize: 14,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              '\$ ${controller.myDetailsProduct.priceCategory}',
              style: context.textTheme.labelSmall!.copyWith(
                color: ColorConst.secondaryColor,
                fontSize: 18,
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
          ],
        ),
      ],
    );
  }
}
