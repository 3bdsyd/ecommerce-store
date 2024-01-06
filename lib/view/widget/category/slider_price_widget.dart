import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constants/app_color.dart';

class SliderPriceWidget extends GetView<HomeControllerImp> {
  const SliderPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        alignment: Alignment.center,
        children: [
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 1,
            ),
            child: RangeSlider(
              inactiveColor: AppColor.secondaryColor.withOpacity(.5),
              activeColor: AppColor.thirdColor,
              values: controller.currentRangeValues.value,
              max: 2400,
              divisions: 10,
              onChanged: (RangeValues values) {
                controller.currentRangeValues(values);
              },
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                width: 22,
              ),
              ...List.generate(
                10,
                (index) => Expanded(
                  child: Container(
                    height: heightPriced(index),
                    margin: EdgeInsets.only(
                      right: 1.w,
                      bottom: 48,
                    ),
                    color: Colors.red.withOpacity(.1),
                  ),
                ),
              ),
              const SizedBox(
                width: 22,
              ),
            ],
          )
        ],
      ),
    );
  }

  double heightPriced(int index) {
    return index == 5
        ? (index + 1) * 8
        : (index - 1 == 5 || index + 1 == 5)
            ? (index + 1) * 7
            : (index - 2 == 5 || index + 2 == 5)
                ? (index + 1) * 6
                : (index - 3 == 5 || index + 3 == 5)
                    ? (index + 1) * 5
                    : (index - 4 == 5 || index + 4 == 5)
                        ? (index + 1) * 4
                        : (index - 4 == 5 || index + 4 == 5)
                            ? (index + 1) * 2
                            : 2;
  }
}
