import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constants/app_color.dart';

class CenterCartWidget extends GetView<HomeControllerImp> {
  const CenterCartWidget(this.index, {super.key});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 75.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.myCategoryCart.keys.toList()[index].nameCategory,
                  style: context.textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  controller.myCategoryCart.keys
                      .toList()[index]
                      .discretionCategory,
                  style: context.textTheme.bodySmall!.copyWith(
                    color: AppColor.thirdColor,
                    fontSize: 15,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  '\$ ${controller.myCategoryCart.keys.toList()[index].priceCategory}',
                  style: context.textTheme.bodySmall!.copyWith(
                    color: AppColor.thirdColor,
                    fontSize: 15,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  '\$ ${num.parse(controller.myCategoryCart.keys.toList()[index].priceCategory) + (num.parse(controller.myCategoryCart.keys.toList()[index].priceCategory) - 100)}',
                  style: context.textTheme.bodySmall!.copyWith(
                    color: AppColor.thirdColor,
                    fontSize: 11,
                    decoration: TextDecoration.lineThrough,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
