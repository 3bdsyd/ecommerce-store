import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'button_check_cart.dart';
import 'cost_calculation.dart';

class DetailsOrder extends StatelessWidget {
  const DetailsOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order info',
            style: context.textTheme.titleLarge!.copyWith(fontSize: 18),
          ),
          SizedBox(
            height: 22.h,
          ),
          const CostCalculation(
            label: 'SubTotal',
            cost: '537.08',
            isTotal: false,
          ),
          SizedBox(
            height: 15.h,
          ),
          const CostCalculation(
            label: 'Delivery fee',
            cost: '10.00',
            isTotal: false,
          ),
          SizedBox(
            height: 15.h,
          ),
          const CostCalculation(
            label: 'Discount',
            cost: '121.10',
            isTotal: false,
          ),
          SizedBox(
            height: 25.h,
          ),
          const CostCalculation(
            label: 'Total',
            cost: '547.08',
            isTotal: true,
          ),
          SizedBox(
            height: 25.h,
          ),
          const ButtonCheckCart()
        ],
      ),
    );
  }
}
