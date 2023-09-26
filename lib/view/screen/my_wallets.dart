import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/orders_history/title_back.dart';

class MyWallets extends StatelessWidget {
  const MyWallets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        children: [
          SizedBox(
            height: 22.h,
          ),
          TitleBack(
            title: 'My Wallets',
          ),
          SizedBox(
            height: 25.h,
          ),
        ],
      ),
    );
  }
}
