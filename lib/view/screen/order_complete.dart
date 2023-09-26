import 'package:ecommerce_store/view/widget/orders_history/title_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widget/configure_widget/cofigure_stack.dart';
import '../widget/order_complete/button_order_details.dart';

class OrderComplete extends StatelessWidget {
  const OrderComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: ListView(
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
              ConfigureStack(),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Payment Successful!',
                style: context.textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 2.h),
              Text(
                'Order #100 will arrive in 1 hour',
                style: context.textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 180.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    const ButtonOrderDetails(
                      detailsButton: true,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const ButtonOrderDetails(
                      detailsButton: false,
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
