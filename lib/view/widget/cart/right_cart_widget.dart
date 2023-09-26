import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constant/image_const.dart';

class RightCartWidget extends GetView<HomeControllerImp> {
  const RightCartWidget(this.index, {super.key});
final int index;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              controller.removeAllItemsFromCart(
                controller.myCategoryCart.keys.toList()[index].id,
              );
            },
            child: SvgPicture.asset(
              ImageConst.imageDeletedIcon,
              height: 20.h,
              width: 15.w,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  controller.removeItemsFromCart(
                      controller.myCategoryCart.keys.toList()[index].id);
                },
                child: SvgPicture.asset(
                  ImageConst.imageMinusIcon,
                  height: 4.h,
                  width: 15.w,
                ),
              ),
              Expanded(
                child: Text(
                  controller.myCategoryCart.values.toList()[index].toString(),
                  style: context.textTheme.titleLarge!.copyWith(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
              GestureDetector(
                onTap: () {
                  controller.addItemsToCart(
                      controller.myCategoryCart.keys.toList()[index].id);
                },
                child: SvgPicture.asset(
                  ImageConst.imagePlusIcon,
                  height: 11.h,
                  width: 15.w,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
