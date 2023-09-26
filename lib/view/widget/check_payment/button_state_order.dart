import 'package:ecommerce_store/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';

class ButtonStateOrder extends StatelessWidget {
  const ButtonStateOrder({super.key, required this.cancelOrder});
  final bool cancelOrder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed(
            cancelOrder ? ScreenNames.orderFailed : ScreenNames.orderComplete,
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor:
              cancelOrder ? ColorConst.secondaryColor : ColorConst.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          cancelOrder ? 'Cancel Order' : 'Continue Order',
          overflow: TextOverflow.ellipsis,
          style: context.textTheme.labelLarge!.copyWith(fontSize: 18),
        ),
      ),
    );
  }
}
