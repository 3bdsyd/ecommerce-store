import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../data/datasource/static/static.dart';

class ItemsOrder extends GetView<HomeControllerImp> {
  const ItemsOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: ListView.separated(
        itemCount: orderItemsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              controller.choseOrderItem(index);
              orderItemsList[index].toScreen != null
                  ? Get.to(orderItemsList[index].toScreen)
                  : null;
            },
            child: Obx(
              () => itemContainer(context, index),
            ),
          );
        },
        separatorBuilder: (BuildContext context, _) => SizedBox(
          width: 10.w,
        ),
      ),
    );
  }

  Widget itemContainer(BuildContext context, int index) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      decoration: BoxDecoration(
        boxShadow: controller.currentOrderItem.value == index
            ? [
                BoxShadow(
                  color: ColorConst.secondaryColor.withOpacity(.2),
                  blurRadius: 5,
                  spreadRadius: 5,
                ),
              ]
            : [
                const BoxShadow(color: Colors.transparent),
              ],
        color: controller.currentOrderItem.value == index
            ? ColorConst.secondaryColor
            : Colors.transparent,
        border: Border.all(color: ColorConst.secondaryColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        orderItemsList[index].title,
        style: context.textTheme.labelLarge!.copyWith(
          color: controller.currentOrderItem.value == index
              ? Colors.white
              : ColorConst.secondaryColor,
        ),
      ),
    );
  }
}
