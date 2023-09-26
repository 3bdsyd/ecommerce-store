import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../controller/home_controller.dart';

import 'custom_button_maxmin.dart';

class ButtonMaxMinPrice extends GetView<HomeControllerImp> {
  const ButtonMaxMinPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: CustomButtonMaxMinWidget(true),
          ),
          SizedBox(
            width: 8.w,
          ),
          const Expanded(
            flex: 1,
            child: CustomButtonMaxMinWidget(false),
          ),
        ],
      ),
    );
  }
}
