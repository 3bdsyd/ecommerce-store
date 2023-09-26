import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';

class DetailsColorsProduct extends GetView<HomeControllerImp>{
  const DetailsColorsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          4,
          (index) => Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 2.w,
              vertical: 5.h,
            ),
            // color: Colors.red,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[350],
                  ),
                ),
                Container(
                  height: 34,
                  width: 34,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    color: controller.colorsList[index],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
