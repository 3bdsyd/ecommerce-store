import 'package:ecommerce_store/core/constant/icon_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/image_const.dart';

class ButtonBackConfigure extends StatelessWidget {
  const ButtonBackConfigure({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: SvgPicture.asset(
          IconConst.buttonBack,
          fit: BoxFit.scaleDown,
          width: 25.w,
          height: 25.w,
        ),
      ),
    );
  }
}
