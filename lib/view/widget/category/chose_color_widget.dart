import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constant/image_const.dart';

class ChoseColorWidget extends GetView<HomeControllerImp> {
  const ChoseColorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          6,
          (index) => Expanded(
            child: Obx(
              () => GestureDetector(
                onTap: () {
                  controller.myColor(index);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: controller.colorsList[index],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  height: 40.h,
                  margin: EdgeInsets.symmetric(horizontal: 2.h),
                  child: index == controller.currentColor.value
                      ? SvgPicture.asset(
                          ImageConst.fromFieldImagePasswordRecovery,
                        )
                      : Container(
                          width: 0,
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
