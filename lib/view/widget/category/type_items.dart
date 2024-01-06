import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:ecommerce_store/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_color.dart';

class TypeItems extends GetView<HomeControllerImp> {
  const TypeItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: 25.h,
        child: ListView.separated(
          itemCount: nameCategoryList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                controller.choseItem(index);
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
      ),
    );
  }

  Widget itemContainer(BuildContext context, int index) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      decoration: BoxDecoration(
          boxShadow: controller.currentItem.value == index
              ? [
                  BoxShadow(
                    color: AppColor.secondaryColor.withOpacity(.2),
                    blurRadius: 5,
                    spreadRadius: 5,
                  ),
                ]
              : [const BoxShadow(color: Colors.transparent)],
          color: controller.currentItem.value == index
              ? AppColor.secondaryColor
              : Colors.transparent,
          border: Border.all(color: AppColor.secondaryColor),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        nameCategoryList[index].nameCategory,
        style: context.textTheme.labelLarge!.copyWith(
          color: controller.currentItem.value == index
              ? Colors.white
              : AppColor.secondaryColor,
        ),
      ),
    );
  }
}
