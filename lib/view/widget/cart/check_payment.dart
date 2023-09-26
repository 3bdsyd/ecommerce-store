import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';
import '../check_payment/page_builder_payment.dart';

class CheckPayment extends GetView<HomeControllerImp> {
  const CheckPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        controller.changeStatePaymentProduct(false);
        controller.changeStateMap(false);
        return false;
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          children: [
            SizedBox(
              height: 12.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  controller.changeStatePaymentProduct(false);
                  controller.changeStateMap(false);
                  Get.back();
                },
                child: SvgPicture.asset(
                  ImageConst.fromFieldImageButtonBack,
                  width: 25.w,
                  height: 25.h,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 25.w,
                      width: 25.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorConst.primaryColor,
                      ),
                      child: Text(
                        '1',
                        style: context.textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(
                      'Delivery',
                      style: context.textTheme.bodySmall,
                    ),
                  ],
                ),
                SizedBox(
                  width: 5.w,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 1.h,
                        color: ColorConst.thirdColor.withOpacity(.5),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 25.w,
                      width: 25.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorConst.primaryColor,
                      ),
                      child: Text(
                        '2',
                        style: context.textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(
                      'Payment',
                      style: context.textTheme.bodySmall,
                    ),
                  ],
                ),
                SizedBox(
                  width: 5.w,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 1.h,
                        color: ColorConst.thirdColor.withOpacity(.5),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 25.w,
                      width: 25.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorConst.primaryColor,
                      ),
                      child: Text(
                        '3',
                        style: context.textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(
                      'Order check',
                      style: context.textTheme.bodySmall,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.w,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            const PageBuilderPayment()
          ],
        ),
      ),
    );
  }
}