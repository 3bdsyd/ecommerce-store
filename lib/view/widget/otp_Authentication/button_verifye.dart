import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';
import '../../../router/routes.dart';

class ButtonVerifye extends StatelessWidget {
  const ButtonVerifye({super.key, required this.verifye});
  final bool verifye;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: ElevatedButton(
        
        onPressed: () {
          verifye
              ? Get.toNamed(ScreenNames.informationAuth)
              : Get.toNamed(ScreenNames.configure);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorConst.primaryColor,
          minimumSize: Size(30.w, 40.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Text(
              'Save',
              style: context.textTheme.labelLarge!.copyWith(
                color: ColorConst.whiteColor,
              ),
            ),
            SvgPicture.asset(
              ImageConst.fromFieldImageLogIn,
              width: 25.w,
              fit: BoxFit.scaleDown,
            ),
          ],
        ),
      ),
    );
  }
}
