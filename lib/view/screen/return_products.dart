import 'package:ecommerce_store/view/widget/orders_history/title_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/information_personal/cart_return.dart';

class ReturnProducts extends StatelessWidget {
  const ReturnProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            children: [
              SizedBox(
                height: 12.h,
              ),
              TitleBack(
                title: 'Return',
                chatScreen: true,
              ),
              SizedBox(
                height: 25.h,
              ),
              const CartReturn(),
            ],
          ),
        ),
      ),
    );
  }
}
