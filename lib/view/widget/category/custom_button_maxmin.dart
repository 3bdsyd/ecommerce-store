import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class CustomButtonMaxMinWidget extends GetView<HomeControllerImp> {
  const CustomButtonMaxMinWidget(this.minButton, {super.key});
  final bool minButton;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: ColorConst.tenColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Text(
            minButton ? "Min" : 'Max',
            style: context.textTheme.labelLarge!
                .copyWith(fontSize: 18, fontWeight: FontWeight.w800),
          ),
          Obx(
            () => Expanded(
              child: Text(
                '${minButton ? (controller.currentRangeValues.value.start + 100).round().toString() : (controller.currentRangeValues.value.end + 100).round().toString()}\$',
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.labelLarge!
                    .copyWith(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SvgPicture.asset(
            ImageConst.imageLabelIcon,
            width: 30.w,
            height: 20.h,
            fit: BoxFit.scaleDown,
          ),
        ],
      ),
    );
  }
}
