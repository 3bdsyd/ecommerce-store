import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_color.dart';

class ButtonGenderWidget extends GetView<HomeControllerImp> {
  const ButtonGenderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          3,
          (index) => Expanded(
            child: Obx(
              () => GestureDetector(
                onTap: () {
                  controller.myGender(index);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: controller.currentGender.value == index
                        ? AppColor.primaryColor
                        : AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  height: 40.h,
                  margin: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Text(
                    controller.typeGenderList[index],
                    style: context.textTheme.labelLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: controller.currentGender.value == index
                          ? Colors.white
                          : AppColor.thirdColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
