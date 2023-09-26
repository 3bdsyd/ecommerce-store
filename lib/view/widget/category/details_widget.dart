import 'package:ecommerce_store/view/widget/category/home_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class DetailsWidget extends GetView<HomeControllerImp> {
  const DetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: GestureDetector(
        onTap: dialogWidget,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          height: 43.h,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: ColorConst.thirdColor.withOpacity(.8),
                blurRadius: 10,
              ),
            ],
            color: ColorConst.thirdColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: SvgPicture.asset(
            ImageConst.imageVectorEdit,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }

  void dialogWidget() {
    Get.generalDialog(
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) {
        return Column(
          children: [
            Expanded(
              child: Container(
                color: ColorConst.secondaryColor.withOpacity(.2),
              ),
            ),
            Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const HomeDetails(),
              ),
            ),
          ],
        );
      },
    );
  }
}
