import 'package:ecommerce_store/core/constant/icon_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../widget/configure_widget/cofigure_stack.dart';
import '../widget/order_complete/button_order_failed.dart';
import '../widget/orders_history/title_back.dart';

class OrderFailed extends StatelessWidget {
  const OrderFailed({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              TitleBack(
                title: 'Order Complete',
                chatScreen: true,
              ),
              SizedBox(
                height: 180.h,
              ),
              // field
              ConfigureStack(filedScreen: true),
              // ConfigureStack(),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Order Failed',
                style: context.textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 2.h),
              Text(
                'Your payment occurred an error',
                style: context.textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50.h,
              ),
              SvgPicture.asset(IconConst.imagesNoteIcon),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Do not worry 😉',
                style: context.textTheme.labelMedium!.copyWith(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w),
                child: Text(
                  'Keep calm, sometimes it happens\n'
                  'Please go back and check your payment'
                  ' method or contact us',
                  style: context.textTheme.titleLarge!.copyWith(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    const ButtonOrderFailed(
                      reviewButton: true,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const ButtonOrderFailed(
                      reviewButton: false,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
